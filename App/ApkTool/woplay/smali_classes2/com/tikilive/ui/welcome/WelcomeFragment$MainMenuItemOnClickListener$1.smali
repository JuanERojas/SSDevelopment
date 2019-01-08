.class Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$1;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;)V
    .locals 0

    .line 1149
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1152
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1158
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;

    iget-object v1, v1, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    .line 1160
    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;

    iget-object v2, v2, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v2}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
