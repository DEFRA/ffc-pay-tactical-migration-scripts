INSERT INTO public."completedPaymentRequests" (
    "paymentRequestId", "schemeId", "ledger", "sourceSystem", "deliveryBody", "invoiceNumber", "frn", "agreementNumber", "contractNumber", "currency", "schedule", "dueDate", "value", "acknowledged", "settledValue", "lastSettlement", "marketingYear", "submitted", "paymentRequestNumber", "invalid"
)
SELECT DISTINCT
    headers."paymentRequestId",
    headers."schemeId",
    headers.ledger,
    headers."sourceSystem",
    headers."deliveryBody",
    headers."invoiceNumber",
    headers.frn,
    headers."agreementNumber",
    headers."contractNumber",
    headers.currency,
    headers.schedule,
    headers."dueDate",
    headers.value,
    NOW(),
    headers.value,
    NOW(),
    headers."marketingYear",
    NOW(),
    headers."paymentRequestNumber",
    false
FROM public."paymentRequests" AS headers
INNER JOIN public."tempHeaders" AS temp
    ON headers."invoiceNumber" = temp."Invoice Number"


