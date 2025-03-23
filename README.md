## Short Description
Mobarter is a savings dApp that helps users lock their funds over a specified period of time and only have access to funds when it is due for withdrawal.

## Overview
Mobarter is a P2P trading platform enabling users to buy, sell cryptocurrencies, and supports on/off ramping for fiat conversion. It also integrates crypto payments for easier transactions, focusing on security, decentralization, and user-friendliness. Mobarter aims to empower Africans with cross-border payment solutions using blockchain technology.

In order to make the use of the dApp seamless for users, especially non-web3 literates, an account abstraction provided my Web3Auth is been used handle signing into the application.

## Features

- **Onchain Agent:**  
  Onchain agents can help you carryout onchain actions such as buying a token, creating an NFT and lauching a smart contract.

- **Management of server wallets:**  
  Create wallets for various specific use case with ease. Powered by Privy Server Wallets

- **Twitter manager:**  
  Tweets can also be created and published

## Architecture

Employee.ai is composed of three main stacks

1. **Frontend Stack:**

   - **Next.js:** User friendly interface to enable users chat with the ai.
   - **Privy Auth:** Used for authentication of users into the app.

2. **Agent Stack:**

   - **CDP AgentKit:** Provides the agents and a set of actions that can be plugged in to give the llm more capabilities

3. **API Stack:**

   - **Backend APIs:** Provides REST endpoints for frontend communication with the user's desired ai agent. Powered with Nest.js backend
   - **Deployment** Manages the wallet keys

## How It Works

1. **User interface:**  
  Users selects an employee and sends a message in the form on a natural language to the ai. 

2. **API:**  
  The message is and employee for which the message was intended is forward to the backend server

3. **Backend & Routing:**  
  Receives request and determines which agent will handle the message. Appropriate response is the returned to the user.

4. **Sever wallets:**  
  Easily create as many wallets as you need to manage your budgets and other expenses. Privy Server Wallets makes this super easy

## Future Roadmap

- **Agent Support:**  
  Increase the number of agents supported

- **Agent Actions/providers:**  
  Support more agent actions/providers as these would give room for a better and more effective agents

- **LLM Support:**  
 Provide more LLM support such as Deepseek, and Qween, which are cheaper for the end user