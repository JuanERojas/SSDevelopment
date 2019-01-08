.class Lcom/tikilive/ui/welcome/WelcomeFragment$7$1;
.super Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;
.source "WelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment$7;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$7;

.field final synthetic val$finalFirstVisiblePositions:[I


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment$7;[I)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$7$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$7;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$7$1;->val$finalFirstVisiblePositions:[I

    iget-object p1, p1, Lcom/tikilive/ui/welcome/WelcomeFragment$7;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$7$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$7;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$7;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$600(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$7$1;->val$finalFirstVisiblePositions:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
