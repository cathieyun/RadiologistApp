extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_define_global_const(const char *, void *);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_1365FB17114547328EEDA6D7EDAA80A4(void *, void *);
void MREP_A9B6BA5EE2024536AD9544D55F3CB43E(void *, void *);
void MREP_0F0A406120C142A19EAF24E798B6188E(void *, void *);
void MREP_47DB3BA93E3D407594CFAB71C61E3EDB(void *, void *);
void MREP_EC8411F5421E4EEF88793DEA4F3FBD81(void *, void *);
void MREP_491D00F1CB5C4634AB4BF7103D754C32(void *, void *);
void MREP_16D7501A8AD241C7B6E3BD0AD74EF7D7(void *, void *);
void MREP_93AC6EBC537E4B79914C57A3D4D407BE(void *, void *);
void MREP_BD65089FD77B497A940C7642CA4A2884(void *, void *);
void MREP_2455CE8BAD804984B20CD1F274DA0727(void *, void *);
void MREP_9FA483BAA4B7440EB3C53599002E2C61(void *, void *);
void MREP_39F8A7E8354F4C4E9D60CB166C14C471(void *, void *);
void MREP_B54841DBEB4F400B9DA39B7FE962C406(void *, void *);
void MREP_B4BF2A22C94145D889D9D3642DA7D2C3(void *, void *);
void MREP_E6855AC3662048C9920687D834C28387(void *, void *);
void MREP_6B48BAD882344BD484A7748E8F4E0E5B(void *, void *);
void MREP_B03F212B1D5442FB85689F383F68A48F(void *, void *);
void MREP_89C9D993B5324CACA5F5B02209AB7DDA(void *, void *);
void MREP_21B640F222984BF88E5C09EC158461D3(void *, void *);
void MREP_AFE21A72652F412B897E4CC4F476F001(void *, void *);
void MREP_3801DD2512A54D1EAF37570AC429F1E9(void *, void *);
void MREP_9D75C90ADE6E4FF7A1F70A8EFDC799A8(void *, void *);
void MREP_40CB006841EE49AAACBA78816B1E4AD2(void *, void *);
void MREP_955CA88C1FF44606BB322F1C8745AF56(void *, void *);
void MREP_33C45943E6E849DB987E8A79BD6AD718(void *, void *);
void MREP_3E9FA96683404D5E918F521291A1E860(void *, void *);
void MREP_4AB9B2269DAE425DB25479D444E80D7B(void *, void *);
void MREP_1733D5CACBD8422698751DE9BBC31A9C(void *, void *);
void MREP_1655AE23A6C643F689B728022ED9270C(void *, void *);
void MREP_84B356B424274C41949225FDBDD3B54A(void *, void *);
void MREP_C639169A5DC2441EA76E4C1B2FB07F84(void *, void *);
void MREP_31422D66EDA64CED831A569772B2958D(void *, void *);
void MREP_CA4ED2456B124737965BD3F6AA0EDD89(void *, void *);
void MREP_B190B95074D44CEDA52DAE34FC2E3758(void *, void *);
void MREP_7605B4A205284A9DA8CCE56D8CD62ABF(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
#if !__LP64__
	try {
#endif
	    void *self = rb_vm_top_self();
rb_define_global_const("RUBYMOTION_ENV", @"development");
rb_define_global_const("RUBYMOTION_VERSION", @"2.6");
MREP_1365FB17114547328EEDA6D7EDAA80A4(self, 0);
MREP_A9B6BA5EE2024536AD9544D55F3CB43E(self, 0);
MREP_0F0A406120C142A19EAF24E798B6188E(self, 0);
MREP_47DB3BA93E3D407594CFAB71C61E3EDB(self, 0);
MREP_EC8411F5421E4EEF88793DEA4F3FBD81(self, 0);
MREP_491D00F1CB5C4634AB4BF7103D754C32(self, 0);
MREP_16D7501A8AD241C7B6E3BD0AD74EF7D7(self, 0);
MREP_93AC6EBC537E4B79914C57A3D4D407BE(self, 0);
MREP_BD65089FD77B497A940C7642CA4A2884(self, 0);
MREP_2455CE8BAD804984B20CD1F274DA0727(self, 0);
MREP_9FA483BAA4B7440EB3C53599002E2C61(self, 0);
MREP_39F8A7E8354F4C4E9D60CB166C14C471(self, 0);
MREP_B54841DBEB4F400B9DA39B7FE962C406(self, 0);
MREP_B4BF2A22C94145D889D9D3642DA7D2C3(self, 0);
MREP_E6855AC3662048C9920687D834C28387(self, 0);
MREP_6B48BAD882344BD484A7748E8F4E0E5B(self, 0);
MREP_B03F212B1D5442FB85689F383F68A48F(self, 0);
MREP_89C9D993B5324CACA5F5B02209AB7DDA(self, 0);
MREP_21B640F222984BF88E5C09EC158461D3(self, 0);
MREP_AFE21A72652F412B897E4CC4F476F001(self, 0);
MREP_3801DD2512A54D1EAF37570AC429F1E9(self, 0);
MREP_9D75C90ADE6E4FF7A1F70A8EFDC799A8(self, 0);
MREP_40CB006841EE49AAACBA78816B1E4AD2(self, 0);
MREP_955CA88C1FF44606BB322F1C8745AF56(self, 0);
MREP_33C45943E6E849DB987E8A79BD6AD718(self, 0);
MREP_3E9FA96683404D5E918F521291A1E860(self, 0);
MREP_4AB9B2269DAE425DB25479D444E80D7B(self, 0);
MREP_1733D5CACBD8422698751DE9BBC31A9C(self, 0);
MREP_1655AE23A6C643F689B728022ED9270C(self, 0);
MREP_84B356B424274C41949225FDBDD3B54A(self, 0);
MREP_C639169A5DC2441EA76E4C1B2FB07F84(self, 0);
MREP_31422D66EDA64CED831A569772B2958D(self, 0);
MREP_CA4ED2456B124737965BD3F6AA0EDD89(self, 0);
MREP_B190B95074D44CEDA52DAE34FC2E3758(self, 0);
MREP_7605B4A205284A9DA8CCE56D8CD62ABF(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
