.class public Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "VideoCastControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private mController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 623
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->mController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;
    .locals 3

    .line 629
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;-><init>()V

    .line 630
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 631
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 638
    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->mController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    .line 639
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 640
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 646
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 647
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_error:I

    .line 648
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 649
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_ok:I

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;)V

    .line 650
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 658
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
