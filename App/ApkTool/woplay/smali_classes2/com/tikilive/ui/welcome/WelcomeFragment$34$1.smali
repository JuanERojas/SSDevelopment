.class Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment$34;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment$34;Ljava/lang/String;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->val$target:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 900
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->val$target:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "video_library_category"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "video_library_player"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "channels"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "guide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "video_library_network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "video_library"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/16 v0, 0x103

    packed-switch p1, :pswitch_data_0

    .line 939
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "INITIAL_FRAGMENT"

    const/16 v1, 0x102

    .line 940
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 941
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Recommendation;->getActionId()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "channel_id"

    .line 942
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v1, v1, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Recommendation;->getActionId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 933
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "video_id"

    .line 934
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v1, v1, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Recommendation;->getActionId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 935
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 928
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "category_id"

    .line 929
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v1, v1, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Recommendation;->getActionId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 930
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 923
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "category_id"

    .line 924
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v1, v1, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Recommendation;->getActionId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 925
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 919
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 920
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 913
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v1, v1, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v1

    const-class v2, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "INITIAL_FRAGMENT"

    .line 914
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "channel_id"

    .line 915
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v1, v1, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Recommendation;->getActionId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 907
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v1, v1, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v1

    const-class v2, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "INITIAL_FRAGMENT"

    .line 908
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "channel_id"

    .line 909
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v1, v1, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->val$recommendation:Lcom/tikilive/ui/model/Recommendation;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Recommendation;->getActionId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 902
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "INITIAL_FRAGMENT"

    const/16 v1, 0x101

    .line 903
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 904
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 944
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$34$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$34;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d4acb09 -> :sswitch_7
        -0x1346b11a -> :sswitch_6
        0x5e23afc -> :sswitch_5
        0x67413fb -> :sswitch_4
        0x2c0b7d03 -> :sswitch_3
        0x556423d0 -> :sswitch_2
        0x55b92f29 -> :sswitch_1
        0x5f295f46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
