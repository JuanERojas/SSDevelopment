.class Lcom/tikilive/ui/fragment/ErrorFragment$1;
.super Ljava/lang/Object;
.source "ErrorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/fragment/ErrorFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/fragment/ErrorFragment;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tikilive/ui/fragment/ErrorFragment$1;->this$0:Lcom/tikilive/ui/fragment/ErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 145
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment$1;->this$0:Lcom/tikilive/ui/fragment/ErrorFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/fragment/ErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment$1;->this$0:Lcom/tikilive/ui/fragment/ErrorFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
