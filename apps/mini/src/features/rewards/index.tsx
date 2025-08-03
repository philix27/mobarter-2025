import BottomModal from "@/src/components/BottomModal"
import { Button } from "@/src/components/Button"
import Input from "@/src/components/Input"
import { AppSelect } from "@/src/components/Select"
import { Text } from "@/src/components/ui/Text"
import { useState } from "react"
import { toast } from "sonner"

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
    const [feedback, setFeedback] = useState<string>()
    const [feedbackCategory, setFeedbackCategory] = useState<string>()
    const [pin, setPin] = useState<string>()

    const handleSubmit = () => {
        if (!feedback) {
            toast.error('Please provide a feedback')
            return
        }
        if (!feedbackCategory) {
            toast.error('Select a feedback category')
            return
        }
        if (!pin) {
            toast.error('Select a feedback category')
            return
        }
        // async send request to claim rewards

        toast.success("100 has been deposited into your wallet")
    }

    return <div className="p-4">
        <div className="h-[50px] flex items-center justify-center bg-card mb-5 rounded-md">
            <Text className="font-bold" variant="md">Provide Feedback and Claim Rewards</Text>
        </div>
        <div className="gap-y-5 flex flex-col items-center">
            <AppSelect
                label="Category"
                onChange={function (newValue: string) {
                    setFeedbackCategory(newValue)
                }}
                data={categories.map((val) => { return { value: val, label: val } })} />
            <Input
                label="Feedback"
                placeholder="Provide a feedback"
                value={feedback}
                onChange={(e) => {
                    setFeedback(e.target.value)
                }} />
            <Button onClick={() => {
                if (!feedback) {
                    toast.error('Please provide a feedback')
                    return
                }
                if (!feedbackCategory) {
                    toast.error('Select a feedback category')
                    return
                }
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
                <Input label="Transactions PIN"
                    placeholder="Enter PIn"
                    type="number"
                    value={pin}
                    onChange={(e) => {
                        if (e.target.value.length > 6) return
                        setPin(e.target.value)
                    }}
                />
                <Button onClick={handleSubmit}>Confirm</Button>
                <div className="h-[25vh]" />
            </div>
        </BottomModal>
    </div>
}