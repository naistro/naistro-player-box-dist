# __main__.py
import subprocess, sys
print("🔒 Running Naistro Player…")
subprocess.run([sys.executable, "-m", "pip", "install", "-r", "requirements.txt"])
import main
main.main()