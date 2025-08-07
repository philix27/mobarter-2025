import BottomModal from "@/src/components/BottomModal"
import { Button } from "@/src/components/Button"
import Input from "@/src/components/Input"
import { AppSelect } from "@/src/components/Select"
import { Text } from "@/src/components/ui/Text"
import { useState } from "react"
import { toast } from "sonner"
import { Label } from "@/src/components/comps"
// import { useRouter } from 'next/router';
// import { IAppParams } from "../types/appParams"

export const categories = [
    "Airtime",
    "Data Plan",
    "Sign Up",
    "Wallet",
    "Settings",
    "Profile",
    "Others",
]

export default function RewardsView() {
    const [showConfirmModal, setShowConfirmModal] = useState(false)
    const [feedback, setFeedback] = useState<string>()
    const [feedbackCategory, setFeedbackCategory] = useState<string>()
    const [pin, setPin] = useState<string>()
    // const router = useRouter();
    // const params = router.query as unknown as IAppParams;

    const validateForm = () => {
        if (!feedback || feedback.trim().length == 0) {
            toast.error('Please provide a feedbackV')
            return
        }
        if (!feedbackCategory) {
            toast.error('Select a feedback category')
            return
        }
        setShowConfirmModal(true)
    }

    const handleSubmit = () => {

        if (!feedback || feedback.trim().length == 0) {
            toast.error('Please provide a feedbackH')
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
        <div className="text-center flex flex-col items-center justify-center bg-card mb-5 rounded-md py-2 px-4">
            <Text className="font-bold mb-4 text-[15px]" variant="md">Provide Feedback and Claim Rewards</Text>
            <Text className="font-light text-[13.5 px] text-muted" >
                Help us improve the app by providing feedbacks
                and updates you would love to see in a future version.
            </Text>
        </div>
        <div className="gap-y-6 flex flex-col items-center">
            <AppSelect
                label="Category"
                onChange={function (newValue: string) {
                    setFeedbackCategory(newValue)
                }}
                data={categories.map((val) => { return { value: val, label: val } })} />

            <div className="w-full">
                <Label className="">Feedback</Label>
                <textarea
                    placeholder="Your feedback"
                    value={feedback}
                    className="bg-card w-full min-h-[100px] rounded-[10px] max-h-[500px] px-3 py-2"
                    onChange={(e) => {
                        setFeedback(e.target.value)
                    }}
                />

            </div>

            <p className="text-[16px] font-bold text-primary">12:45</p>
            <Button
                className="w-[45%]"
                onClick={validateForm}>
                Claim</Button>
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