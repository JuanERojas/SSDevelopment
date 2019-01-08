.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;
.super Ljava/lang/Object;
.source "ChannelFullscreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 228
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {p1}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getTextTracksHelper()Lcom/tikilive/ui/helper/TextTracksHelper;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/tikilive/ui/helper/TextTracksHelper;->hasTextTracks()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x101030e

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 239
    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 240
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$700(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 245
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    .line 246
    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$700(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v4, 0x109000f

    .line 245
    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 247
    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    const v6, 0x7f120226

    .line 248
    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 249
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 250
    invoke-virtual {p1}, Lcom/tikilive/ui/helper/TextTracksHelper;->textTracksEnabled()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 251
    new-instance v6, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;

    invoke-direct {v6, p0, p1, v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;Lcom/tikilive/ui/helper/TextTracksHelper;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v6, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v6}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$700(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    invoke-virtual {p1}, Lcom/tikilive/ui/helper/TextTracksHelper;->getPairTrackList()Ljava/util/ArrayList;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 268
    iget-object v7, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    .line 269
    invoke-static {v7}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$700(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 268
    invoke-virtual {v0, v4, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckedTextView;

    .line 270
    invoke-virtual {v7, v3}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 271
    invoke-virtual {p1, v6}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTrackName(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v7, v2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 273
    invoke-virtual {p1, v6}, Lcom/tikilive/ui/helper/TextTracksHelper;->isTextTrackEnabled(Landroid/util/Pair;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 274
    new-instance v8, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$2;

    invoke-direct {v8, p0, p1, v6, v7}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$2;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;Lcom/tikilive/ui/helper/TextTracksHelper;Landroid/util/Pair;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v6, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v6}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$700(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 291
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    const/high16 p1, 0x44070000    # 540.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    .line 293
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$900(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1100(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1200(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 298
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1300(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method
