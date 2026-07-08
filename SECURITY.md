# Security Policy

## Supported Versions

We currently support security updates for the following versions:

| Version | Supported          |
| ------- | ------------------ |
| Latest  | :white_check_mark: |
| < Latest | :x:                |

## Reporting a Vulnerability

If you discover a security vulnerability in this project, please report it responsibly:

1. **Do not** open a public GitHub issue for security vulnerabilities
2. Email security concerns to the maintainers (contact information available on the repository profile)
3. Include as much detail as possible:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact
   - Suggested fix (if any)

## Response Time

We aim to respond to security reports within **48 hours** and will work with you to:
- Confirm the vulnerability
- Develop a fix
- Release a patch in a timely manner
- Credit you for the discovery (if desired)

## Security Best Practices

When using this application:

- **Input Validation**: Always validate Excel file inputs before processing
- **File Size Limits**: Be aware of file size limits to prevent DoS attacks
- **Client-Side Processing**: This application processes data client-side; sensitive data should not be processed in untrusted environments
- **Dependencies**: Keep dependencies up to date by running `npm audit` regularly

## Known Security Considerations

- This is a client-side application that processes files locally
- Excel file parsing is performed in the browser
- No server-side data storage or transmission occurs
- PDF generation happens client-side using jsPDF

## Disclosure Policy

- Security vulnerabilities will be disclosed after a fix is available
- We will credit security researchers who responsibly disclose vulnerabilities
- Public disclosure will be coordinated with the reporter

Thank you for helping keep this project secure!
