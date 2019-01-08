.class Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;
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

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1175
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1178
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;->val$v:Landroid/view/View;

    const v1, 0x7f0a030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1184
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;->val$v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    .line 1186
    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;

    iget-object v2, v2, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v2}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1187
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->onAnimationEnd()V

    return-void
.end method
