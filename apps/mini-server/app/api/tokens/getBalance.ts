import StableTokenABI from "./cusdAbi.json";
import { Chain, isAddress, createPublicClient, http } from "viem";
import { celo, base } from "viem/chains";
import { ChainId } from "../chains/chains";

const chains: Record<ChainId, Chain> = {
  [ChainId.Celo]: celo,
  [ChainId.Base]: base,
};

export async function getBalance({
  chianId,
  address,
  tokenAddress,
}: {
  chianId: string;
  address: string;
  tokenAddress: string;
}) {
  if (!isAddress(address)) {
    throw new Error("Invalid Address");
  }

  const client = createPublicClient({
    chain: chains[chianId as unknown as ChainId],
    transport: http(),
  });

  const tokenBalance = (await client.readContract({
    address: tokenAddress as `0x${string}`,
    abi: StableTokenABI.abi,
    functionName: "balanceOf",
    args: [address],
  })) as bigint;

  return formatEtherBalance(tokenBalance);
}

export function formatEtherBalance(
  balance: bigint,
  decimals = 18,
  precision = 4,
) {
  const divisor = 10 ** decimals;
  const ether = Number(balance) / divisor;
  return ether.toFixed(precision); // returns a string like "0.1234"
}
