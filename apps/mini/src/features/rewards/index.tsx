import BottomModal from "@/src/components/BottomModal"
import { Button } from "@/src/components/Button"
import Input from "@/src/components/Input"
import { AppSelect } from "@/src/components/Select"
import { Text } from "@/src/components/ui/Text"
import { useState } from "react"

export const categories = [
    "Airtime",
    "Data Plan",
    "Sign Up",
    "Wallet",
    "Settings",
    "Profile"
]
export default function RewardsView() {
    const [showConfirmModal, setShowConfirmModal] = useState(false)

    return <div className="p-4">
        <div className="h-[50px] flex items-center justify-center bg-card mb-5 rounded-md">
            <Text className="font-bold" variant="md">Provide Feedback and Claim Rewards</Text>
        </div>
        <div className="gap-y-5 flex flex-col items-center">
            <AppSelect
                label="Category"
                onChange={function (newValue: string) {
                }}
                data={categories.map((val, i) => { return { value: val, label: val } })} />
            <Input label="Feedback" placeholder="Provide a feedback" />
            <Button onClick={() => {
                setShowConfirmModal(true)
            }}>Claim</Button>
        </div>
        <BottomModal
            title="Confirm Transaction"
            showSheet={showConfirmModal}
            onClose={() => {
                setShowConfirmModal(false)
            }}
        >
            <div className="flex items-center flex-col gap-y-7">
                <Input label="Transactions PIN" placeholder="Enter PIn" type="number" />
                <Button onClick={() => {

                }}>Confirm</Button>
                <div className="h-[25vh]" />
            </div>
        </BottomModal>
    </div>
}