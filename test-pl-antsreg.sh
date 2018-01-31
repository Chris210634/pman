/home/chliao/workingdir/pfurl/bin/pfurl --verb POST --raw \
--http pman-myproject.127.0.0.1.nip.io/api/v1/cmd --jsonwrapper 'payload' --msg \
        '{   "action": "run",
            "meta":  {
                "cmd":      "$execshell $selfpath/$selfexec /share/incoming /share/outgoing -f template.nii.gz",
                "auid":     "chliao",
                "jid":      "002",
                "threaded": true,
                "container":   {
                        "target": {
                            "image":       "172.30.1.1:5000/myproject/antsreg",
                            "cmdParse":     true
                        }
                }
            }
        }' --quiet --jsonpprintindent 4


#-f template.nii.gz -n 1
