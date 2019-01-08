.class Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$1;
.super Ljava/lang/Object;
.source "TracksChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
