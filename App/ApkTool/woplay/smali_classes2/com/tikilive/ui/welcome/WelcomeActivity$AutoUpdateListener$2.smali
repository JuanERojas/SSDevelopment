.class Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->onShowUpdateUI(Lcom/github/snowdream/android/app/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;

.field final synthetic val$info:Lcom/github/snowdream/android/app/UpdateInfo;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$2;->this$1:Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$2;->val$info:Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$2;->this$1:Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;

    iget-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$2;->val$info:Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->informUpdate(Lcom/github/snowdream/android/app/UpdateInfo;)V

    return-void
.end method
