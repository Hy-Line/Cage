	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	16
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	605
/* java_type_count: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: c7800725-952a-4704-b9d7-775dd1990b62 */
	.byte	0x25, 0x07, 0x80, 0xc7, 0x2a, 0x95, 0x04, 0x47, 0xb9, 0xd7, 0x77, 0x5d, 0xd1, 0x99, 0x0b, 0x62
	/* entry_count */
	.word	315
	/* duplicate_count */
	.word	159
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	module0_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 3ea53d2c-ebdb-4171-b213-b89d11295db2 */
	.byte	0x2c, 0x3d, 0xa5, 0x3e, 0xdb, 0xeb, 0x71, 0x41, 0xb2, 0x13, 0xb8, 0x9d, 0x11, 0x29, 0x5d, 0xb2
	/* entry_count */
	.word	16
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	module1_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Design */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 3da7aa44-f2c5-4b7d-be5f-88cef66948f4 */
	.byte	0x44, 0xaa, 0xa7, 0x3d, 0xc5, 0xf2, 0x7d, 0x4b, 0xbe, 0x5f, 0x88, 0xce, 0xf6, 0x69, 0x48, 0xf4
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Essentials */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b30a6845-c1d9-48d6-8939-84999fc26267 */
	.byte	0x45, 0x68, 0x0a, 0xb3, 0xd9, 0xc1, 0xd6, 0x48, 0x89, 0x39, 0x84, 0x99, 0x9f, 0xc2, 0x62, 0x67
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	module3_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Loader */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 4c324049-9729-404c-8499-3505560e6778 */
	.byte	0x49, 0x40, 0x32, 0x4c, 0x29, 0x97, 0x4c, 0x40, 0x84, 0x99, 0x35, 0x05, 0x56, 0x0e, 0x67, 0x78
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.CoordinaterLayout */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 0921ff67-b25f-4cf7-83e1-69a18bec0d77 */
	.byte	0x67, 0xff, 0x21, 0x09, 0x5f, 0xb2, 0xf7, 0x4c, 0x83, 0xe1, 0x69, 0xa1, 0x8b, 0xec, 0x0d, 0x77
	/* entry_count */
	.word	25
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module5_managed_to_java
	/* duplicate_map */
	.xword	module5_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Compat */
	.xword	.L.map_aname.5
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 0a8ead6f-1dc5-40ed-a2a9-c1903ab2477c */
	.byte	0x6f, 0xad, 0x8e, 0x0a, 0xc5, 0x1d, 0xed, 0x40, 0xa2, 0xa9, 0xc1, 0x90, 0x3a, 0xb2, 0x47, 0x7c
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module6_managed_to_java
	/* duplicate_map */
	.xword	module6_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.LiveData.Core */
	.xword	.L.map_aname.6
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 6cf9478e-8cae-4cd7-9f5c-22b61360207f */
	.byte	0x8e, 0x47, 0xf9, 0x6c, 0xae, 0x8c, 0xd7, 0x4c, 0x9f, 0x5c, 0x22, 0xb6, 0x13, 0x60, 0x20, 0x7f
	/* entry_count */
	.word	37
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module7_managed_to_java
	/* duplicate_map */
	.xword	module7_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.v7.AppCompat */
	.xword	.L.map_aname.7
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 3a531090-0ff6-4ca8-8bfd-d02ae6045606 */
	.byte	0x90, 0x10, 0x53, 0x3a, 0xf6, 0x0f, 0xa8, 0x4c, 0x8b, 0xfd, 0xd0, 0x2a, 0xe6, 0x04, 0x56, 0x06
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module8_managed_to_java
	/* duplicate_map */
	.xword	module8_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.Common */
	.xword	.L.map_aname.8
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: a4dd75a7-2c82-44ad-8bdb-a54b31441bb5 */
	.byte	0xa7, 0x75, 0xdd, 0xa4, 0x82, 0x2c, 0xad, 0x44, 0x8b, 0xdb, 0xa5, 0x4b, 0x31, 0x44, 0x1b, 0xb5
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module9_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: AndHUD */
	.xword	.L.map_aname.9
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 3a9a54b9-b9bb-45c5-abda-53adae396e60 */
	.byte	0xb9, 0x54, 0x9a, 0x3a, 0xbb, 0xb9, 0xc5, 0x45, 0xab, 0xda, 0x53, 0xad, 0xae, 0x39, 0x6e, 0x60
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module10_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Support.DrawerLayout */
	.xword	.L.map_aname.10
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: bd3390c1-cc5f-42d4-9a22-0ef3e3ad7b09 */
	.byte	0xc1, 0x90, 0x33, 0xbd, 0x5f, 0xcc, 0xd4, 0x42, 0x9a, 0x22, 0x0e, 0xf3, 0xe3, 0xad, 0x7b, 0x09
	/* entry_count */
	.word	162
	/* duplicate_count */
	.word	19
	/* map */
	.xword	module11_managed_to_java
	/* duplicate_map */
	.xword	module11_managed_to_java_duplicates
	/* assembly_name: datalogic-xamarin-sdk */
	.xword	.L.map_aname.11
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 812c69c2-e6f3-40d5-91d6-30ee004000a3 */
	.byte	0xc2, 0x69, 0x2c, 0x81, 0xf3, 0xe6, 0xd5, 0x40, 0x91, 0xd6, 0x30, 0xee, 0x00, 0x40, 0x00, 0xa3
	/* entry_count */
	.word	7
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module12_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Cage */
	.xword	.L.map_aname.12
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 55731eea-d71d-4428-9ce0-a03051663248 */
	.byte	0xea, 0x1e, 0x73, 0x55, 0x1d, 0xd7, 0x28, 0x44, 0x9c, 0xe0, 0xa0, 0x30, 0x51, 0x66, 0x32, 0x48
	/* entry_count */
	.word	11
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module13_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Acr.UserDialogs */
	.xword	.L.map_aname.13
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: bdf99bea-a07f-4b66-a16e-6352ffb73864 */
	.byte	0xea, 0x9b, 0xf9, 0xbd, 0x7f, 0xa0, 0x66, 0x4b, 0xa1, 0x6e, 0x63, 0x52, 0xff, 0xb7, 0x38, 0x64
	/* entry_count */
	.word	10
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module14_managed_to_java
	/* duplicate_map */
	.xword	module14_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Fragment */
	.xword	.L.map_aname.14
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 7ffcb4fc-2387-4d5c-8a56-b33ae2722575 */
	.byte	0xfc, 0xb4, 0xfc, 0x7f, 0x87, 0x23, 0x5c, 0x4d, 0x8a, 0x56, 0xb3, 0x3a, 0xe2, 0x72, 0x25, 0x75
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module15_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.ViewModel */
	.xword	.L.map_aname.15
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 1152
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554879
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	76
	.zero	2

	/* #1 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	59
	.zero	2

	/* #2 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	54
	.zero	2

	/* #3 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554892
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	61
	.zero	2

	/* #4 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	68
	.zero	2

	/* #5 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554884
	/* java_name */
	.ascii	"android/animation/ValueAnimator"
	.zero	71
	.zero	2

	/* #6 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/ValueAnimator$AnimatorUpdateListener"
	.zero	48
	.zero	2

	/* #7 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554897
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	82
	.zero	2

	/* #8 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554898
	/* java_name */
	.ascii	"android/app/AlertDialog"
	.zero	79
	.zero	2

	/* #9 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554899
	/* java_name */
	.ascii	"android/app/AlertDialog$Builder"
	.zero	71
	.zero	2

	/* #10 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554900
	/* java_name */
	.ascii	"android/app/Application"
	.zero	79
	.zero	2

	/* #11 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	52
	.zero	2

	/* #12 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554903
	/* java_name */
	.ascii	"android/app/DatePickerDialog"
	.zero	74
	.zero	2

	/* #13 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/app/DatePickerDialog$OnDateSetListener"
	.zero	56
	.zero	2

	/* #14 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554908
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	84
	.zero	2

	/* #15 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554918
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	77
	.zero	2

	/* #16 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle"
	.zero	70
	.zero	2

	/* #17 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle$State"
	.zero	64
	.zero	2

	/* #18 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleObserver"
	.zero	62
	.zero	2

	/* #19 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleOwner"
	.zero	65
	.zero	2

	/* #20 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/LiveData"
	.zero	71
	.zero	2

	/* #21 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/Observer"
	.zero	71
	.zero	2

	/* #22 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStore"
	.zero	65
	.zero	2

	/* #23 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStoreOwner"
	.zero	60
	.zero	2

	/* #24 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	68
	.zero	2

	/* #25 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	67
	.zero	2

	/* #26 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554921
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	73
	.zero	2

	/* #27 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554922
	/* java_name */
	.ascii	"android/content/ContentResolver"
	.zero	71
	.zero	2

	/* #28 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554919
	/* java_name */
	.ascii	"android/content/Context"
	.zero	79
	.zero	2

	/* #29 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554925
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	72
	.zero	2

	/* #30 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	71
	.zero	2

	/* #31 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnCancelListener"
	.zero	54
	.zero	2

	/* #32 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnClickListener"
	.zero	55
	.zero	2

	/* #33 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnDismissListener"
	.zero	53
	.zero	2

	/* #34 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnKeyListener"
	.zero	57
	.zero	2

	/* #35 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnMultiChoiceClickListener"
	.zero	44
	.zero	2

	/* #36 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnShowListener"
	.zero	56
	.zero	2

	/* #37 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554920
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	80
	.zero	2

	/* #38 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554952
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	74
	.zero	2

	/* #39 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	69
	.zero	2

	/* #40 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	62
	.zero	2

	/* #41 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	36
	.zero	2

	/* #42 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554960
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	72
	.zero	2

	/* #43 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554962
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	69
	.zero	2

	/* #44 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554965
	/* java_name */
	.ascii	"android/content/res/AssetManager"
	.zero	70
	.zero	2

	/* #45 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554966
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	68
	.zero	2

	/* #46 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554967
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	69
	.zero	2

	/* #47 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554968
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	73
	.zero	2

	/* #48 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554969
	/* java_name */
	.ascii	"android/content/res/Resources$Theme"
	.zero	67
	.zero	2

	/* #49 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554598
	/* java_name */
	.ascii	"android/database/CharArrayBuffer"
	.zero	70
	.zero	2

	/* #50 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554599
	/* java_name */
	.ascii	"android/database/ContentObserver"
	.zero	70
	.zero	2

	/* #51 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/database/Cursor"
	.zero	79
	.zero	2

	/* #52 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554601
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	70
	.zero	2

	/* #53 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554860
	/* java_name */
	.ascii	"android/graphics/Bitmap"
	.zero	79
	.zero	2

	/* #54 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554861
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	79
	.zero	2

	/* #55 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554864
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	74
	.zero	2

	/* #56 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554865
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	79
	.zero	2

	/* #57 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554866
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	80
	.zero	2

	/* #58 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554867
	/* java_name */
	.ascii	"android/graphics/Paint$Style"
	.zero	74
	.zero	2

	/* #59 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554868
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	80
	.zero	2

	/* #60 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554869
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	75
	.zero	2

	/* #61 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554870
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	70
	.zero	2

	/* #62 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554871
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	81
	.zero	2

	/* #63 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554872
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	80
	.zero	2

	/* #64 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554873
	/* java_name */
	.ascii	"android/graphics/Shader"
	.zero	79
	.zero	2

	/* #65 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554877
	/* java_name */
	.ascii	"android/graphics/drawable/ColorDrawable"
	.zero	63
	.zero	2

	/* #66 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554874
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	68
	.zero	2

	/* #67 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	59
	.zero	2

	/* #68 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554856
	/* java_name */
	.ascii	"android/media/ToneGenerator"
	.zero	75
	.zero	2

	/* #69 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554854
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	87
	.zero	2

	/* #70 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554842
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	81
	.zero	2

	/* #71 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554843
	/* java_name */
	.ascii	"android/os/Build"
	.zero	86
	.zero	2

	/* #72 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554844
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	78
	.zero	2

	/* #73 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554846
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	85
	.zero	2

	/* #74 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554840
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	84
	.zero	2

	/* #75 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554851
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	85
	.zero	2

	/* #76 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554841
	/* java_name */
	.ascii	"android/os/Message"
	.zero	84
	.zero	2

	/* #77 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554852
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	85
	.zero	2

	/* #78 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	81
	.zero	2

	/* #79 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	73
	.zero	2

	/* #80 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554839
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	66
	.zero	2

	/* #81 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555015
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	68
	.zero	2

	/* #82 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/design/snackbar/ContentViewCallback"
	.zero	51
	.zero	2

	/* #83 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/design/widget/BaseTransientBottomBar"
	.zero	50
	.zero	2

	/* #84 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/design/widget/BaseTransientBottomBar$BaseCallback"
	.zero	37
	.zero	2

	/* #85 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/design/widget/BaseTransientBottomBar$Behavior"
	.zero	41
	.zero	2

	/* #86 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"android/support/design/widget/BottomNavigationView"
	.zero	52
	.zero	2

	/* #87 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"android/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener"
	.zero	17
	.zero	2

	/* #88 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"android/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener"
	.zero	19
	.zero	2

	/* #89 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"android/support/design/widget/BottomSheetDialog"
	.zero	55
	.zero	2

	/* #90 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/design/widget/CoordinatorLayout"
	.zero	55
	.zero	2

	/* #91 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/design/widget/CoordinatorLayout$Behavior"
	.zero	46
	.zero	2

	/* #92 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/design/widget/CoordinatorLayout$LayoutParams"
	.zero	42
	.zero	2

	/* #93 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/design/widget/Snackbar"
	.zero	64
	.zero	2

	/* #94 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/design/widget/Snackbar$Callback"
	.zero	55
	.zero	2

	/* #95 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/design/widget/Snackbar_SnackbarActionClickImplementor"
	.zero	33
	.zero	2

	/* #96 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"android/support/design/widget/SwipeDismissBehavior"
	.zero	52
	.zero	2

	/* #97 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"android/support/design/widget/SwipeDismissBehavior$OnDismissListener"
	.zero	34
	.zero	2

	/* #98 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v13/view/DragAndDropPermissionsCompat"
	.zero	49
	.zero	2

	/* #99 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat"
	.zero	65
	.zero	2

	/* #100 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	30
	.zero	2

	/* #101 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554470
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"
	.zero	40
	.zero	2

	/* #102 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	26
	.zero	2

	/* #103 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/app/DialogFragment"
	.zero	65
	.zero	2

	/* #104 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/app/Fragment"
	.zero	71
	.zero	2

	/* #105 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/app/Fragment$SavedState"
	.zero	60
	.zero	2

	/* #106 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v4/app/FragmentActivity"
	.zero	63
	.zero	2

	/* #107 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager"
	.zero	64
	.zero	2

	/* #108 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$BackStackEntry"
	.zero	49
	.zero	2

	/* #109 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	37
	.zero	2

	/* #110 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$OnBackStackChangedListener"
	.zero	37
	.zero	2

	/* #111 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"android/support/v4/app/FragmentTransaction"
	.zero	60
	.zero	2

	/* #112 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager"
	.zero	66
	.zero	2

	/* #113 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager$LoaderCallbacks"
	.zero	50
	.zero	2

	/* #114 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback"
	.zero	58
	.zero	2

	/* #115 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	28
	.zero	2

	/* #116 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554477
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder"
	.zero	63
	.zero	2

	/* #117 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder$SupportParentable"
	.zero	45
	.zero	2

	/* #118 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"android/support/v4/content/ContextCompat"
	.zero	62
	.zero	2

	/* #119 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v4/content/Loader"
	.zero	69
	.zero	2

	/* #120 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCanceledListener"
	.zero	46
	.zero	2

	/* #121 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCompleteListener"
	.zero	46
	.zero	2

	/* #122 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"android/support/v4/content/pm/PackageInfoCompat"
	.zero	55
	.zero	2

	/* #123 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenu"
	.zero	58
	.zero	2

	/* #124 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554463
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenuItem"
	.zero	54
	.zero	2

	/* #125 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider"
	.zero	64
	.zero	2

	/* #126 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$SubUiVisibilityListener"
	.zero	40
	.zero	2

	/* #127 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$VisibilityListener"
	.zero	45
	.zero	2

	/* #128 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"android/support/v4/view/DisplayCutoutCompat"
	.zero	59
	.zero	2

	/* #129 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"android/support/v4/view/NestedScrollingParent"
	.zero	57
	.zero	2

	/* #130 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"android/support/v4/view/NestedScrollingParent2"
	.zero	56
	.zero	2

	/* #131 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorCompat"
	.zero	52
	.zero	2

	/* #132 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorListener"
	.zero	50
	.zero	2

	/* #133 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorUpdateListener"
	.zero	44
	.zero	2

	/* #134 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"android/support/v4/view/WindowInsetsCompat"
	.zero	60
	.zero	2

	/* #135 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout"
	.zero	64
	.zero	2

	/* #136 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout$DrawerListener"
	.zero	49
	.zero	2

	/* #137 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar"
	.zero	70
	.zero	2

	/* #138 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$LayoutParams"
	.zero	57
	.zero	2

	/* #139 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnMenuVisibilityListener"
	.zero	45
	.zero	2

	/* #140 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnNavigationListener"
	.zero	49
	.zero	2

	/* #141 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$Tab"
	.zero	66
	.zero	2

	/* #142 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$TabListener"
	.zero	58
	.zero	2

	/* #143 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle"
	.zero	58
	.zero	2

	/* #144 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$Delegate"
	.zero	49
	.zero	2

	/* #145 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	41
	.zero	2

	/* #146 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v7/app/AlertDialog"
	.zero	68
	.zero	2

	/* #147 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v7/app/AlertDialog$Builder"
	.zero	60
	.zero	2

	/* #148 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v7/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor"
	.zero	24
	.zero	2

	/* #149 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v7/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor"
	.zero	25
	.zero	2

	/* #150 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v7/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor"
	.zero	14
	.zero	2

	/* #151 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatActivity"
	.zero	62
	.zero	2

	/* #152 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatCallback"
	.zero	62
	.zero	2

	/* #153 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatDelegate"
	.zero	62
	.zero	2

	/* #154 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554463
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatDialog"
	.zero	64
	.zero	2

	/* #155 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatDialogFragment"
	.zero	56
	.zero	2

	/* #156 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v7/graphics/drawable/DrawerArrowDrawable"
	.zero	46
	.zero	2

	/* #157 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554480
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode"
	.zero	68
	.zero	2

	/* #158 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode$Callback"
	.zero	59
	.zero	2

	/* #159 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder"
	.zero	62
	.zero	2

	/* #160 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554486
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder$Callback"
	.zero	53
	.zero	2

	/* #161 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554493
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuItemImpl"
	.zero	61
	.zero	2

	/* #162 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554490
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter"
	.zero	60
	.zero	2

	/* #163 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter$Callback"
	.zero	51
	.zero	2

	/* #164 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554492
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuView"
	.zero	65
	.zero	2

	/* #165 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554494
	/* java_name */
	.ascii	"android/support/v7/view/menu/SubMenuBuilder"
	.zero	59
	.zero	2

	/* #166 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554477
	/* java_name */
	.ascii	"android/support/v7/widget/DecorToolbar"
	.zero	64
	.zero	2

	/* #167 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView"
	.zero	51
	.zero	2

	/* #168 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	28
	.zero	2

	/* #169 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar"
	.zero	69
	.zero	2

	/* #170 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar$OnMenuItemClickListener"
	.zero	45
	.zero	2

	/* #171 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	36
	.zero	2

	/* #172 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Editable"
	.zero	81
	.zero	2

	/* #173 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/GetChars"
	.zero	81
	.zero	2

	/* #174 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/InputFilter"
	.zero	78
	.zero	2

	/* #175 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554787
	/* java_name */
	.ascii	"android/text/InputFilter$AllCaps"
	.zero	70
	.zero	2

	/* #176 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554788
	/* java_name */
	.ascii	"android/text/InputFilter$LengthFilter"
	.zero	65
	.zero	2

	/* #177 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/NoCopySpan"
	.zero	79
	.zero	2

	/* #178 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/ParcelableSpan"
	.zero	75
	.zero	2

	/* #179 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Spannable"
	.zero	80
	.zero	2

	/* #180 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554804
	/* java_name */
	.ascii	"android/text/SpannableString"
	.zero	74
	.zero	2

	/* #181 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554806
	/* java_name */
	.ascii	"android/text/SpannableStringBuilder"
	.zero	67
	.zero	2

	/* #182 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554808
	/* java_name */
	.ascii	"android/text/SpannableStringInternal"
	.zero	66
	.zero	2

	/* #183 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Spanned"
	.zero	82
	.zero	2

	/* #184 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/TextWatcher"
	.zero	78
	.zero	2

	/* #185 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554838
	/* java_name */
	.ascii	"android/text/format/DateFormat"
	.zero	72
	.zero	2

	/* #186 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554826
	/* java_name */
	.ascii	"android/text/method/BaseKeyListener"
	.zero	67
	.zero	2

	/* #187 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554828
	/* java_name */
	.ascii	"android/text/method/DigitsKeyListener"
	.zero	65
	.zero	2

	/* #188 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/method/KeyListener"
	.zero	71
	.zero	2

	/* #189 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554833
	/* java_name */
	.ascii	"android/text/method/MetaKeyKeyListener"
	.zero	64
	.zero	2

	/* #190 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554835
	/* java_name */
	.ascii	"android/text/method/NumberKeyListener"
	.zero	65
	.zero	2

	/* #191 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554837
	/* java_name */
	.ascii	"android/text/method/PasswordTransformationMethod"
	.zero	54
	.zero	2

	/* #192 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/method/TransformationMethod"
	.zero	62
	.zero	2

	/* #193 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554811
	/* java_name */
	.ascii	"android/text/style/CharacterStyle"
	.zero	69
	.zero	2

	/* #194 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554813
	/* java_name */
	.ascii	"android/text/style/DynamicDrawableSpan"
	.zero	64
	.zero	2

	/* #195 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554815
	/* java_name */
	.ascii	"android/text/style/ForegroundColorSpan"
	.zero	64
	.zero	2

	/* #196 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554816
	/* java_name */
	.ascii	"android/text/style/ImageSpan"
	.zero	74
	.zero	2

	/* #197 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554821
	/* java_name */
	.ascii	"android/text/style/MetricAffectingSpan"
	.zero	64
	.zero	2

	/* #198 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554823
	/* java_name */
	.ascii	"android/text/style/ReplacementSpan"
	.zero	68
	.zero	2

	/* #199 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/style/UpdateAppearance"
	.zero	67
	.zero	2

	/* #200 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/style/UpdateLayout"
	.zero	71
	.zero	2

	/* #201 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	77
	.zero	2

	/* #202 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554773
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	75
	.zero	2

	/* #203 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554771
	/* java_name */
	.ascii	"android/util/Log"
	.zero	86
	.zero	2

	/* #204 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554776
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	78
	.zero	2

	/* #205 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554777
	/* java_name */
	.ascii	"android/util/TypedValue"
	.zero	79
	.zero	2

	/* #206 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554701
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	79
	.zero	2

	/* #207 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	70
	.zero	2

	/* #208 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554706
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	75
	.zero	2

	/* #209 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	78
	.zero	2

	/* #210 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	62
	.zero	2

	/* #211 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554708
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	70
	.zero	2

	/* #212 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554709
	/* java_name */
	.ascii	"android/view/Display"
	.zero	82
	.zero	2

	/* #213 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554710
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	80
	.zero	2

	/* #214 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554726
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	79
	.zero	2

	/* #215 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554682
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	81
	.zero	2

	/* #216 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	72
	.zero	2

	/* #217 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554685
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	75
	.zero	2

	/* #218 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	67
	.zero	2

	/* #219 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	66
	.zero	2

	/* #220 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	85
	.zero	2

	/* #221 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554741
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	77
	.zero	2

	/* #222 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	81
	.zero	2

	/* #223 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	58
	.zero	2

	/* #224 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	57
	.zero	2

	/* #225 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554690
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	78
	.zero	2

	/* #226 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554745
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	78
	.zero	2

	/* #227 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	82
	.zero	2

	/* #228 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554668
	/* java_name */
	.ascii	"android/view/View"
	.zero	85
	.zero	2

	/* #229 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	69
	.zero	2

	/* #230 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	57
	.zero	2

	/* #231 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnKeyListener"
	.zero	71
	.zero	2

	/* #232 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554751
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	80
	.zero	2

	/* #233 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554752
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	67
	.zero	2

	/* #234 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554753
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	61
	.zero	2

	/* #235 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	78
	.zero	2

	/* #236 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	79
	.zero	2

	/* #237 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554755
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	69
	.zero	2

	/* #238 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554691
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	73
	.zero	2

	/* #239 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnGlobalLayoutListener"
	.zero	50
	.zero	2

	/* #240 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	55
	.zero	2

	/* #241 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnTouchModeChangeListener"
	.zero	47
	.zero	2

	/* #242 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554698
	/* java_name */
	.ascii	"android/view/Window"
	.zero	83
	.zero	2

	/* #243 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	74
	.zero	2

	/* #244 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	76
	.zero	2

	/* #245 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554734
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	63
	.zero	2

	/* #246 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554764
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	57
	.zero	2

	/* #247 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	51
	.zero	2

	/* #248 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554765
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	56
	.zero	2

	/* #249 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554759
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	70
	.zero	2

	/* #250 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	67
	.zero	2

	/* #251 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554606
	/* java_name */
	.ascii	"android/widget/AbsListView"
	.zero	76
	.zero	2

	/* #252 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	80
	.zero	2

	/* #253 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554608
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	76
	.zero	2

	/* #254 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemClickListener"
	.zero	56
	.zero	2

	/* #255 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	53
	.zero	2

	/* #256 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/ArrayAdapter"
	.zero	75
	.zero	2

	/* #257 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554625
	/* java_name */
	.ascii	"android/widget/BaseAdapter"
	.zero	76
	.zero	2

	/* #258 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554627
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	81
	.zero	2

	/* #259 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554628
	/* java_name */
	.ascii	"android/widget/CheckBox"
	.zero	79
	.zero	2

	/* #260 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Checkable"
	.zero	78
	.zero	2

	/* #261 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554629
	/* java_name */
	.ascii	"android/widget/CompoundButton"
	.zero	73
	.zero	2

	/* #262 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/CompoundButton$OnCheckedChangeListener"
	.zero	49
	.zero	2

	/* #263 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554619
	/* java_name */
	.ascii	"android/widget/DatePicker"
	.zero	77
	.zero	2

	/* #264 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/DatePicker$OnDateChangedListener"
	.zero	55
	.zero	2

	/* #265 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554637
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	79
	.zero	2

	/* #266 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554638
	/* java_name */
	.ascii	"android/widget/Filter"
	.zero	81
	.zero	2

	/* #267 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Filter$FilterListener"
	.zero	66
	.zero	2

	/* #268 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Filterable"
	.zero	77
	.zero	2

	/* #269 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554642
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	76
	.zero	2

	/* #270 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554643
	/* java_name */
	.ascii	"android/widget/FrameLayout$LayoutParams"
	.zero	63
	.zero	2

	/* #271 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554644
	/* java_name */
	.ascii	"android/widget/GridView"
	.zero	79
	.zero	2

	/* #272 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554645
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	67
	.zero	2

	/* #273 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554654
	/* java_name */
	.ascii	"android/widget/ImageView"
	.zero	78
	.zero	2

	/* #274 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554659
	/* java_name */
	.ascii	"android/widget/LinearLayout"
	.zero	75
	.zero	2

	/* #275 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554660
	/* java_name */
	.ascii	"android/widget/LinearLayout$LayoutParams"
	.zero	62
	.zero	2

	/* #276 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/ListAdapter"
	.zero	76
	.zero	2

	/* #277 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554661
	/* java_name */
	.ascii	"android/widget/ListView"
	.zero	79
	.zero	2

	/* #278 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554663
	/* java_name */
	.ascii	"android/widget/ProgressBar"
	.zero	76
	.zero	2

	/* #279 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554664
	/* java_name */
	.ascii	"android/widget/RadioButton"
	.zero	76
	.zero	2

	/* #280 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	73
	.zero	2

	/* #281 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554622
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	79
	.zero	2

	/* #282 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/ThemedSpinnerAdapter"
	.zero	67
	.zero	2

	/* #283 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554665
	/* java_name */
	.ascii	"android/widget/TimePicker"
	.zero	77
	.zero	2

	/* #284 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554666
	/* java_name */
	.ascii	"android/widget/Toast"
	.zero	82
	.zero	2

	/* #285 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"androidhud/ProgressWheel"
	.zero	78
	.zero	2

	/* #286 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"androidhud/ProgressWheel_SpinHandler"
	.zero	66
	.zero	2

	/* #287 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554621
	/* java_name */
	.ascii	"com/datalogic/cradle/AvailableSourcePower"
	.zero	61
	.zero	2

	/* #288 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554622
	/* java_name */
	.ascii	"com/datalogic/cradle/DLCradleManager"
	.zero	66
	.zero	2

	/* #289 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554623
	/* java_name */
	.ascii	"com/datalogic/cradle/InsertionState"
	.zero	67
	.zero	2

	/* #290 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554519
	/* java_name */
	.ascii	"com/datalogic/decode/BarcodeDefaults"
	.zero	66
	.zero	2

	/* #291 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554520
	/* java_name */
	.ascii	"com/datalogic/decode/BarcodeID"
	.zero	72
	.zero	2

	/* #292 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554521
	/* java_name */
	.ascii	"com/datalogic/decode/BarcodeManager"
	.zero	67
	.zero	2

	/* #293 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554522
	/* java_name */
	.ascii	"com/datalogic/decode/CapturedFrame"
	.zero	68
	.zero	2

	/* #294 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554523
	/* java_name */
	.ascii	"com/datalogic/decode/DecodeException"
	.zero	66
	.zero	2

	/* #295 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/decode/DecodeResult"
	.zero	69
	.zero	2

	/* #296 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/decode/DeinitListener"
	.zero	67
	.zero	2

	/* #297 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/decode/FrameCaptureListener"
	.zero	61
	.zero	2

	/* #298 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/decode/FrameSaveListener"
	.zero	64
	.zero	2

	/* #299 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/decode/InitListener"
	.zero	69
	.zero	2

	/* #300 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554553
	/* java_name */
	.ascii	"com/datalogic/decode/PropertyID"
	.zero	71
	.zero	2

	/* #301 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/decode/ReadListener"
	.zero	69
	.zero	2

	/* #302 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554554
	/* java_name */
	.ascii	"com/datalogic/decode/SavedFrame"
	.zero	71
	.zero	2

	/* #303 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/decode/StartListener"
	.zero	68
	.zero	2

	/* #304 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/decode/StopListener"
	.zero	69
	.zero	2

	/* #305 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554555
	/* java_name */
	.ascii	"com/datalogic/decode/Symbology"
	.zero	72
	.zero	2

	/* #306 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/decode/TimeoutListener"
	.zero	66
	.zero	2

	/* #307 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554556
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Aztec"
	.zero	62
	.zero	2

	/* #308 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554557
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/BeamMode"
	.zero	59
	.zero	2

	/* #309 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554558
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/CharacterSetMode"
	.zero	51
	.zero	2

	/* #310 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554559
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Codabar"
	.zero	60
	.zero	2

	/* #311 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554560
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Code128"
	.zero	60
	.zero	2

	/* #312 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554561
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Code128Aggressiveness"
	.zero	46
	.zero	2

	/* #313 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554562
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Code39"
	.zero	61
	.zero	2

	/* #314 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554563
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Code93"
	.zero	61
	.zero	2

	/* #315 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554564
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Composite"
	.zero	58
	.zero	2

	/* #316 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554565
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Datamatrix"
	.zero	57
	.zero	2

	/* #317 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554566
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/DatamatrixOpMode"
	.zero	51
	.zero	2

	/* #318 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554567
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/DecodingNotification"
	.zero	47
	.zero	2

	/* #319 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554568
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Digimarc"
	.zero	59
	.zero	2

	/* #320 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554569
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Discrete25"
	.zero	57
	.zero	2

	/* #321 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554570
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/DisplayNotification"
	.zero	48
	.zero	2

	/* #322 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554571
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/DotCode"
	.zero	60
	.zero	2

	/* #323 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554572
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Ean13"
	.zero	62
	.zero	2

	/* #324 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554573
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Ean8"
	.zero	63
	.zero	2

	/* #325 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554574
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Formatting"
	.zero	57
	.zero	2

	/* #326 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554575
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/FrameCaptureConfiguration"
	.zero	42
	.zero	2

	/* #327 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554576
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/FrameCaptureFormat"
	.zero	49
	.zero	2

	/* #328 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554577
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/FrameCaptureMode"
	.zero	51
	.zero	2

	/* #329 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554578
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/GoodRead"
	.zero	59
	.zero	2

	/* #330 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554579
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Gs1DataBar_14"
	.zero	54
	.zero	2

	/* #331 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554580
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Gs1DataBar_Expanded"
	.zero	48
	.zero	2

	/* #332 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554581
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Gs1DataBar_Limited"
	.zero	49
	.zero	2

	/* #333 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554582
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/IlluminationType"
	.zero	51
	.zero	2

	/* #334 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554583
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/ImageCaptureProfile"
	.zero	48
	.zero	2

	/* #335 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554584
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/IntentDeliveryMode"
	.zero	49
	.zero	2

	/* #336 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554585
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/IntentWedge"
	.zero	56
	.zero	2

	/* #337 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554586
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Interleaved25"
	.zero	54
	.zero	2

	/* #338 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554587
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Inverse"
	.zero	60
	.zero	2

	/* #339 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554588
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/InverseMode"
	.zero	56
	.zero	2

	/* #340 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554589
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Isbt128Mode"
	.zero	56
	.zero	2

	/* #341 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554591
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/KeyWedgeMode"
	.zero	55
	.zero	2

	/* #342 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554590
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/KeyboardWedge"
	.zero	54
	.zero	2

	/* #343 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554592
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/LengthControlMode"
	.zero	50
	.zero	2

	/* #344 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554593
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/LinearQuietZones"
	.zero	51
	.zero	2

	/* #345 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554594
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Matrix25"
	.zero	59
	.zero	2

	/* #346 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554595
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Maxicode"
	.zero	59
	.zero	2

	/* #347 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554597
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/MicroQR"
	.zero	60
	.zero	2

	/* #348 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554596
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Micropdf417"
	.zero	56
	.zero	2

	/* #349 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554598
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Msi"
	.zero	64
	.zero	2

	/* #350 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554599
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/MsiAggressiveness"
	.zero	50
	.zero	2

	/* #351 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554600
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/MultiScan"
	.zero	58
	.zero	2

	/* #352 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554601
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/Pdf417"
	.zero	61
	.zero	2

	/* #353 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554602
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/PostalAustralian"
	.zero	51
	.zero	2

	/* #354 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554603
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/PostalJapan"
	.zero	56
	.zero	2

	/* #355 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554604
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/PostalKix"
	.zero	58
	.zero	2

	/* #356 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554605
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/PostalRoyalMail"
	.zero	52
	.zero	2

	/* #357 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554606
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/PostalUsPlanet"
	.zero	53
	.zero	2

	/* #358 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554607
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/PostalUsPostnet"
	.zero	52
	.zero	2

	/* #359 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554608
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/PostalUsps4State"
	.zero	51
	.zero	2

	/* #360 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554609
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/QRCode"
	.zero	61
	.zero	2

	/* #361 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554610
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/ScannerOptions"
	.zero	53
	.zero	2

	/* #362 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554611
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/ScannerProperties"
	.zero	50
	.zero	2

	/* #363 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554612
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/SendCodeID"
	.zero	57
	.zero	2

	/* #364 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554613
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/SymbologyBase"
	.zero	54
	.zero	2

	/* #365 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554614
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/SymbologyLengths"
	.zero	51
	.zero	2

	/* #366 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554615
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/ToneNotificationMode"
	.zero	47
	.zero	2

	/* #367 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554616
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/UpcA"
	.zero	63
	.zero	2

	/* #368 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554617
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/UpcE"
	.zero	63
	.zero	2

	/* #369 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554618
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/UpcEanCompositeMode"
	.zero	48
	.zero	2

	/* #370 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554619
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/UpcEanExtensions"
	.zero	51
	.zero	2

	/* #371 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554620
	/* java_name */
	.ascii	"com/datalogic/decode/configuration/WebWedge"
	.zero	59
	.zero	2

	/* #372 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"com/datalogic/device/BootType"
	.zero	73
	.zero	2

	/* #373 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"com/datalogic/device/DeviceException"
	.zero	66
	.zero	2

	/* #374 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"com/datalogic/device/ErrorManager"
	.zero	69
	.zero	2

	/* #375 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554508
	/* java_name */
	.ascii	"com/datalogic/device/battery/BatteryEvent"
	.zero	61
	.zero	2

	/* #376 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/device/battery/BatteryEventListener"
	.zero	53
	.zero	2

	/* #377 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554509
	/* java_name */
	.ascii	"com/datalogic/device/battery/BatteryException"
	.zero	57
	.zero	2

	/* #378 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554510
	/* java_name */
	.ascii	"com/datalogic/device/battery/BatteryInfo"
	.zero	62
	.zero	2

	/* #379 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554511
	/* java_name */
	.ascii	"com/datalogic/device/battery/BatteryStatus"
	.zero	60
	.zero	2

	/* #380 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554512
	/* java_name */
	.ascii	"com/datalogic/device/battery/ChargingProfile"
	.zero	58
	.zero	2

	/* #381 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554513
	/* java_name */
	.ascii	"com/datalogic/device/battery/DLBatteryManager"
	.zero	57
	.zero	2

	/* #382 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554518
	/* java_name */
	.ascii	"com/datalogic/device/battery/ManufacturerInfo"
	.zero	57
	.zero	2

	/* #383 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554495
	/* java_name */
	.ascii	"com/datalogic/device/configuration/BooleanProperty"
	.zero	52
	.zero	2

	/* #384 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554496
	/* java_name */
	.ascii	"com/datalogic/device/configuration/CharacterProperty"
	.zero	50
	.zero	2

	/* #385 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554497
	/* java_name */
	.ascii	"com/datalogic/device/configuration/ConfigException"
	.zero	52
	.zero	2

	/* #386 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554498
	/* java_name */
	.ascii	"com/datalogic/device/configuration/EnumProperty"
	.zero	55
	.zero	2

	/* #387 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554503
	/* java_name */
	.ascii	"com/datalogic/device/configuration/NumericProperty"
	.zero	52
	.zero	2

	/* #388 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554504
	/* java_name */
	.ascii	"com/datalogic/device/configuration/Property"
	.zero	59
	.zero	2

	/* #389 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/device/configuration/PropertyEditor"
	.zero	53
	.zero	2

	/* #390 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/device/configuration/PropertyGetter"
	.zero	53
	.zero	2

	/* #391 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554506
	/* java_name */
	.ascii	"com/datalogic/device/configuration/PropertyGroup"
	.zero	54
	.zero	2

	/* #392 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554507
	/* java_name */
	.ascii	"com/datalogic/device/configuration/TextProperty"
	.zero	55
	.zero	2

	/* #393 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554494
	/* java_name */
	.ascii	"com/datalogic/device/display/DLSecondDisplayManager"
	.zero	51
	.zero	2

	/* #394 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554489
	/* java_name */
	.ascii	"com/datalogic/device/info/BarcodeScannerType"
	.zero	58
	.zero	2

	/* #395 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554490
	/* java_name */
	.ascii	"com/datalogic/device/info/KeyboardType"
	.zero	64
	.zero	2

	/* #396 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554491
	/* java_name */
	.ascii	"com/datalogic/device/info/SYSTEM"
	.zero	70
	.zero	2

	/* #397 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554492
	/* java_name */
	.ascii	"com/datalogic/device/info/SYSTEM$Version"
	.zero	62
	.zero	2

	/* #398 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554493
	/* java_name */
	.ascii	"com/datalogic/device/info/WiFiType"
	.zero	68
	.zero	2

	/* #399 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"com/datalogic/device/input/ActionKey"
	.zero	66
	.zero	2

	/* #400 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"com/datalogic/device/input/AdvancedKeyboard"
	.zero	59
	.zero	2

	/* #401 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/device/input/AdvancedKeyboard$ActionEventListener"
	.zero	39
	.zero	2

	/* #402 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"com/datalogic/device/input/AdvancedKeyboard$Configuration"
	.zero	45
	.zero	2

	/* #403 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"com/datalogic/device/input/AdvancedKeyboard$Info"
	.zero	54
	.zero	2

	/* #404 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/device/input/AdvancedKeyboard$LayoutChangeEventListener"
	.zero	33
	.zero	2

	/* #405 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"com/datalogic/device/input/AdvancedKeyboard$LayoutNotificationType"
	.zero	36
	.zero	2

	/* #406 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/device/input/AdvancedKeyboard$MultitapEventListener"
	.zero	37
	.zero	2

	/* #407 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"com/datalogic/device/input/AdvancedKeyboard$PersistenceType"
	.zero	43
	.zero	2

	/* #408 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"com/datalogic/device/input/AdvancedKeyboard$Property"
	.zero	50
	.zero	2

	/* #409 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"com/datalogic/device/input/AdvancedKeyboard$Resources"
	.zero	49
	.zero	2

	/* #410 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/device/input/AutoScanTrigger"
	.zero	60
	.zero	2

	/* #411 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554476
	/* java_name */
	.ascii	"com/datalogic/device/input/AutoScanTrigger$Range"
	.zero	54
	.zero	2

	/* #412 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554486
	/* java_name */
	.ascii	"com/datalogic/device/input/KeyCodeEntry"
	.zero	63
	.zero	2

	/* #413 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"com/datalogic/device/input/KeyboardManager"
	.zero	60
	.zero	2

	/* #414 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554485
	/* java_name */
	.ascii	"com/datalogic/device/input/KeyboardManager$VScanCode"
	.zero	50
	.zero	2

	/* #415 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/device/input/MotionTrigger"
	.zero	62
	.zero	2

	/* #416 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"com/datalogic/device/input/MotionTrigger$Sensitivity"
	.zero	50
	.zero	2

	/* #417 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554487
	/* java_name */
	.ascii	"com/datalogic/device/input/TouchManager"
	.zero	63
	.zero	2

	/* #418 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/datalogic/device/input/Trigger"
	.zero	68
	.zero	2

	/* #419 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"com/datalogic/device/input/VScanEntry"
	.zero	65
	.zero	2

	/* #420 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"com/datalogic/device/location/LocationManager"
	.zero	57
	.zero	2

	/* #421 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"com/datalogic/device/location/LocationMode"
	.zero	60
	.zero	2

	/* #422 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"com/datalogic/device/nfc/NfcManager"
	.zero	67
	.zero	2

	/* #423 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"com/datalogic/device/notification/Led"
	.zero	65
	.zero	2

	/* #424 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"com/datalogic/device/notification/LedManager"
	.zero	58
	.zero	2

	/* #425 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"com/datalogic/device/power/PowerManager"
	.zero	63
	.zero	2

	/* #426 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"com/datalogic/device/power/RebootReason"
	.zero	63
	.zero	2

	/* #427 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"com/datalogic/device/power/SuspendTimeout"
	.zero	61
	.zero	2

	/* #428 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"com/datalogic/device/power/WakeupSource"
	.zero	63
	.zero	2

	/* #429 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"com/datalogic/softspot/ActionType"
	.zero	69
	.zero	2

	/* #430 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"com/datalogic/softspot/DecodedDuration"
	.zero	64
	.zero	2

	/* #431 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"com/datalogic/softspot/ImageEnum"
	.zero	70
	.zero	2

	/* #432 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"com/datalogic/softspot/ImageState"
	.zero	69
	.zero	2

	/* #433 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"com/datalogic/softspot/SoftSpot"
	.zero	71
	.zero	2

	/* #434 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"com/datalogic/softspot/SoftSpot$Point"
	.zero	65
	.zero	2

	/* #435 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"com/datalogic/softspot/SoftSpot$WorkingArea"
	.zero	59
	.zero	2

	/* #436 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"com/datalogic/softspot/SoftSpot$WorkingArea$RotationBehavior"
	.zero	42
	.zero	2

	/* #437 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554481
	/* java_name */
	.ascii	"crc6439b217bab7914f95/ActionSheetListAdapter"
	.zero	58
	.zero	2

	/* #438 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"crc6453ccb77bbbda87df/EggCount"
	.zero	72
	.zero	2

	/* #439 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"crc6453ccb77bbbda87df/ListCages"
	.zero	71
	.zero	2

	/* #440 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"crc6453ccb77bbbda87df/MainHomeScreen"
	.zero	66
	.zero	2

	/* #441 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"crc6453ccb77bbbda87df/ScanCage"
	.zero	72
	.zero	2

	/* #442 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"crc6453ccb77bbbda87df/Setup"
	.zero	75
	.zero	2

	/* #443 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554491
	/* java_name */
	.ascii	"crc64692a67b1ffd85ce9/ActivityLifecycleCallbacks"
	.zero	54
	.zero	2

	/* #444 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	48
	.zero	2

	/* #445 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"crc64b76f6e8b2d8c8db1/AbstractAppCompatDialogFragment_1"
	.zero	47
	.zero	2

	/* #446 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"crc64b76f6e8b2d8c8db1/ActionSheetAppCompatDialogFragment"
	.zero	46
	.zero	2

	/* #447 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"crc64b76f6e8b2d8c8db1/AlertAppCompatDialogFragment"
	.zero	52
	.zero	2

	/* #448 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"crc64b76f6e8b2d8c8db1/BottomSheetDialogFragment"
	.zero	55
	.zero	2

	/* #449 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"crc64b76f6e8b2d8c8db1/ConfirmAppCompatDialogFragment"
	.zero	50
	.zero	2

	/* #450 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554476
	/* java_name */
	.ascii	"crc64b76f6e8b2d8c8db1/DateAppCompatDialogFragment"
	.zero	53
	.zero	2

	/* #451 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554477
	/* java_name */
	.ascii	"crc64b76f6e8b2d8c8db1/LoginAppCompatDialogFragment"
	.zero	52
	.zero	2

	/* #452 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"crc64b76f6e8b2d8c8db1/PromptAppCompatDialogFragment"
	.zero	51
	.zero	2

	/* #453 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"crc64b76f6e8b2d8c8db1/TimeAppCompatDialogFragment"
	.zero	53
	.zero	2

	/* #454 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"crc64d4170892514b7419/MainActivity"
	.zero	68
	.zero	2

	/* #455 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"crc64fefde0352335ae69/CurrentCountAdapter"
	.zero	61
	.zero	2

	/* #456 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	85
	.zero	2

	/* #457 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555160
	/* java_name */
	.ascii	"java/io/File"
	.zero	90
	.zero	2

	/* #458 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555161
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	80
	.zero	2

	/* #459 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555162
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	79
	.zero	2

	/* #460 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	85
	.zero	2

	/* #461 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555170
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	83
	.zero	2

	/* #462 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555167
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	83
	.zero	2

	/* #463 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555169
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	72
	.zero	2

	/* #464 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555173
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	82
	.zero	2

	/* #465 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555175
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	83
	.zero	2

	/* #466 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	82
	.zero	2

	/* #467 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555176
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	82
	.zero	2

	/* #468 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555177
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	88
	.zero	2

	/* #469 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	82
	.zero	2

	/* #470 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/AutoCloseable"
	.zero	79
	.zero	2

	/* #471 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555102
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	85
	.zero	2

	/* #472 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555103
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	88
	.zero	2

	/* #473 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	80
	.zero	2

	/* #474 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555104
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	83
	.zero	2

	/* #475 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555105
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	87
	.zero	2

	/* #476 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555121
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	74
	.zero	2

	/* #477 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555106
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	70
	.zero	2

	/* #478 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	83
	.zero	2

	/* #479 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	82
	.zero	2

	/* #480 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555107
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	86
	.zero	2

	/* #481 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555122
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	88
	.zero	2

	/* #482 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555124
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	87
	.zero	2

	/* #483 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555108
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	83
	.zero	2

	/* #484 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555109
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	87
	.zero	2

	/* #485 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555137
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	68
	.zero	2

	/* #486 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555138
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	71
	.zero	2

	/* #487 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555139
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	67
	.zero	2

	/* #488 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555111
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	85
	.zero	2

	/* #489 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	84
	.zero	2

	/* #490 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555142
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	80
	.zero	2

	/* #491 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555112
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	88
	.zero	2

	/* #492 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555143
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	72
	.zero	2

	/* #493 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555144
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	72
	.zero	2

	/* #494 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555145
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	86
	.zero	2

	/* #495 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555113
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	86
	.zero	2

	/* #496 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555147
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	64
	.zero	2

	/* #497 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	84
	.zero	2

	/* #498 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555114
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	76
	.zero	2

	/* #499 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555148
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	75
	.zero	2

	/* #500 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555115
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	87
	.zero	2

	/* #501 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555116
	/* java_name */
	.ascii	"java/lang/String"
	.zero	86
	.zero	2

	/* #502 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555118
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	86
	.zero	2

	/* #503 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555120
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	83
	.zero	2

	/* #504 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555149
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	63
	.zero	2

	/* #505 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	71
	.zero	2

	/* #506 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	68
	.zero	2

	/* #507 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	66
	.zero	2

	/* #508 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	80
	.zero	2

	/* #509 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	72
	.zero	2

	/* #510 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555039
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	77
	.zero	2

	/* #511 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555041
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	76
	.zero	2

	/* #512 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555043
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	76
	.zero	2

	/* #513 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555044
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	76
	.zero	2

	/* #514 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555045
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	88
	.zero	2

	/* #515 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555046
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	83
	.zero	2

	/* #516 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555047
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	80
	.zero	2

	/* #517 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555049
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	80
	.zero	2

	/* #518 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555051
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	78
	.zero	2

	/* #519 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555052
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	71
	.zero	2

	/* #520 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555054
	/* java_name */
	.ascii	"java/net/URI"
	.zero	90
	.zero	2

	/* #521 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555055
	/* java_name */
	.ascii	"java/net/URL"
	.zero	90
	.zero	2

	/* #522 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555056
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	80
	.zero	2

	/* #523 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555053
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	70
	.zero	2

	/* #524 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555078
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	87
	.zero	2

	/* #525 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555080
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	83
	.zero	2

	/* #526 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	73
	.zero	2

	/* #527 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	77
	.zero	2

	/* #528 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555082
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	73
	.zero	2

	/* #529 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	64
	.zero	2

	/* #530 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	64
	.zero	2

	/* #531 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	65
	.zero	2

	/* #532 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	63
	.zero	2

	/* #533 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	65
	.zero	2

	/* #534 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	65
	.zero	2

	/* #535 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555100
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	52
	.zero	2

	/* #536 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555065
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	80
	.zero	2

	/* #537 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	61
	.zero	2

	/* #538 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	60
	.zero	2

	/* #539 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	79
	.zero	2

	/* #540 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555070
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	76
	.zero	2

	/* #541 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555071
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	72
	.zero	2

	/* #542 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555073
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	65
	.zero	2

	/* #543 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555076
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	68
	.zero	2

	/* #544 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	70
	.zero	2

	/* #545 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555007
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	83
	.zero	2

	/* #546 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554996
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	82
	.zero	2

	/* #547 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	81
	.zero	2

	/* #548 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554998
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	85
	.zero	2

	/* #549 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555016
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	85
	.zero	2

	/* #550 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	84
	.zero	2

	/* #551 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555062
	/* java_name */
	.ascii	"java/util/Random"
	.zero	86
	.zero	2

	/* #552 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554570
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	79
	.zero	2

	/* #553 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	72
	.zero	2

	/* #554 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554572
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	70
	.zero	2

	/* #555 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	78
	.zero	2

	/* #556 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554586
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	71
	.zero	2

	/* #557 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554587
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	78
	.zero	2

	/* #558 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	78
	.zero	2

	/* #559 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	71
	.zero	2

	/* #560 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554588
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	72
	.zero	2

	/* #561 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	76
	.zero	2

	/* #562 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554590
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	69
	.zero	2

	/* #563 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	72
	.zero	2

	/* #564 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554566
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	71
	.zero	2

	/* #565 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554568
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	67
	.zero	2

	/* #566 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555200
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	78
	.zero	2

	/* #567 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554888
	/* java_name */
	.ascii	"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor"
	.zero	32
	.zero	2

	/* #568 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554907
	/* java_name */
	.ascii	"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor"
	.zero	40
	.zero	2

	/* #569 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554933
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnCancelListenerImplementor"
	.zero	38
	.zero	2

	/* #570 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554937
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnClickListenerImplementor"
	.zero	39
	.zero	2

	/* #571 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554943
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnKeyListenerImplementor"
	.zero	41
	.zero	2

	/* #572 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554949
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnShowListenerImplementor"
	.zero	40
	.zero	2

	/* #573 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554992
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	63
	.zero	2

	/* #574 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	72
	.zero	2

	/* #575 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555013
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	71
	.zero	2

	/* #576 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555031
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	62
	.zero	2

	/* #577 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"mono/android/support/design/widget/BottomNavigationView_OnNavigationItemReselectedListenerImplementor"
	.zero	1
	.zero	2

	/* #578 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"mono/android/support/design/widget/BottomNavigationView_OnNavigationItemSelectedListenerImplementor"
	.zero	3
	.zero	2

	/* #579 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554463
	/* java_name */
	.ascii	"mono/android/support/design/widget/SwipeDismissBehavior_OnDismissListenerImplementor"
	.zero	18
	.zero	2

	/* #580 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	21
	.zero	2

	/* #581 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	24
	.zero	2

	/* #582 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor"
	.zero	29
	.zero	2

	/* #583 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	33
	.zero	2

	/* #584 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	29
	.zero	2

	/* #585 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	29
	.zero	2

	/* #586 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554780
	/* java_name */
	.ascii	"mono/android/text/TextWatcherImplementor"
	.zero	62
	.zero	2

	/* #587 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554671
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	53
	.zero	2

	/* #588 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554677
	/* java_name */
	.ascii	"mono/android/view/View_OnKeyListenerImplementor"
	.zero	55
	.zero	2

	/* #589 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554612
	/* java_name */
	.ascii	"mono/android/widget/AdapterView_OnItemClickListenerImplementor"
	.zero	40
	.zero	2

	/* #590 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554633
	/* java_name */
	.ascii	"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor"
	.zero	33
	.zero	2

	/* #591 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554528
	/* java_name */
	.ascii	"mono/com/datalogic/decode/DeinitListenerImplementor"
	.zero	51
	.zero	2

	/* #592 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554532
	/* java_name */
	.ascii	"mono/com/datalogic/decode/FrameCaptureListenerImplementor"
	.zero	45
	.zero	2

	/* #593 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554536
	/* java_name */
	.ascii	"mono/com/datalogic/decode/FrameSaveListenerImplementor"
	.zero	48
	.zero	2

	/* #594 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554539
	/* java_name */
	.ascii	"mono/com/datalogic/decode/InitListenerImplementor"
	.zero	53
	.zero	2

	/* #595 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554543
	/* java_name */
	.ascii	"mono/com/datalogic/decode/ReadListenerImplementor"
	.zero	53
	.zero	2

	/* #596 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554546
	/* java_name */
	.ascii	"mono/com/datalogic/decode/StartListenerImplementor"
	.zero	52
	.zero	2

	/* #597 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554549
	/* java_name */
	.ascii	"mono/com/datalogic/decode/StopListenerImplementor"
	.zero	53
	.zero	2

	/* #598 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554552
	/* java_name */
	.ascii	"mono/com/datalogic/decode/TimeoutListenerImplementor"
	.zero	50
	.zero	2

	/* #599 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554517
	/* java_name */
	.ascii	"mono/com/datalogic/device/battery/BatteryEventListenerImplementor"
	.zero	37
	.zero	2

	/* #600 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"mono/com/datalogic/device/input/AdvancedKeyboard_ActionEventListenerImplementor"
	.zero	23
	.zero	2

	/* #601 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"mono/com/datalogic/device/input/AdvancedKeyboard_LayoutChangeEventListenerImplementor"
	.zero	17
	.zero	2

	/* #602 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"mono/com/datalogic/device/input/AdvancedKeyboard_MultitapEventListenerImplementor"
	.zero	21
	.zero	2

	/* #603 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33555119
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	68
	.zero	2

	/* #604 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554565
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	56
	.zero	2

	.size	map_java, 67760
/* Java to managed map: END */


/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	104
/* java_name_width: END */
