.class Lcom/tikilive/ui/welcome/WelcomeFragment$34;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;->renderRecommendation(Lcom/tikilive/ui/model/Recommendation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

.field final synthetic val$recommendation:Lcom/tikilive/ui/model/Recommendation;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/model/Recommendation;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 869
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$800(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Recommendation;->getTextLarge()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Recommendation;->getTextIcon()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 873
    iget-object v4, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v4}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$900(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 874
    iget-object v4, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v4}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    .line 876
    invoke-static {v4}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$900(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 877
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$900(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$800(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 879
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1100(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$900(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$800(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 883
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1100(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 886
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Recommendation;->getTextSmall()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 888
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1100(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1100(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1100(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    :goto_1
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Recommendation;->getActionTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 895
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 896
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$400(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 897
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$400(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;

    invoke-direct {v2, p0, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment$34;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$400(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 953
    :goto_2
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1200(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 954
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 955
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 956
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 957
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
