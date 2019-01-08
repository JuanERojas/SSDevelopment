.class Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$1;
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


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->informSkip(Lcom/github/snowdream/android/app/UpdateInfo;)V

    return-void
.end method
