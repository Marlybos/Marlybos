def send_backup_by_mail(bak_name):
    import smtplib
    from email.mime.multipart import MIMEMultipart
    from email.mime.text import MIMEText
    from email.mime.application import MIMEApplication

    smtp_server = 'smtp.gmail.com'
    smtp_port = 587
    smtp_username = 'wesoft242@gmail.com'
    smtp_password = 'Is0ft@242'

    from_email = 'wesoft242@gmail.com'
    to_email = 'mpouo.marly.vardelly@huawei-partners.com'
    subject = bak_name
    body = "Priere de trouver wen attache la savaugarde de marly_business"

    msg = MIMEMultipart()
    msg['From'] = from_email
    msg['To'] = to_email
    msg['Subject'] = subject
    msg.attach(MIMEText(body))

    with open("C:/Users/m84230051/PycharmProjects/marlybusiness/images/nexmo_pricing.xlsx", "rb") as f:
        attachment = MIMEApplication(f.read(), _subtype='xlsx')
        attachment.add_header('Content-Disposition', 'attachment',
                              filename='nexmo_pricing.xlsx')
        msg.attach(attachment)

    with smtplib.SMTP(smtp_server, smtp_port) as smtp:
        smtp.starttls()
        smtp.login(smtp_username, smtp_password)
        smtp.send_message(msg)
    print("Termnine")