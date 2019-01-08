.class Lcom/tikilive/ui/video/VideoPlaybackActivity$2;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 235
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/TextTracksHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/TextTracksHelper;->hasTextTracks()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 239
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x101030e

    aput v4, v3, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 241
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 242
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 247
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    .line 248
    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v4, 0x109000f

    .line 247
    invoke-virtual {p1, v4, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 249
    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    const v5, 0x7f120226

    .line 250
    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 251
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 252
    iget-object v5, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v5}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/TextTracksHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tikilive/ui/helper/TextTracksHelper;->textTracksEnabled()Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 253
    new-instance v5, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$1;

    invoke-direct {v5, p0, v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$1;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$2;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v5, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v5}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/TextTracksHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/helper/TextTracksHelper;->getPairTrackList()Ljava/util/ArrayList;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 266
    iget-object v6, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    .line 267
    invoke-static {v6}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 266
    invoke-virtual {p1, v4, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    .line 268
    invoke-virtual {v6, v3}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 269
    iget-object v7, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v7}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/TextTracksHelper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTrackName(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v6, v2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 271
    iget-object v7, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v7}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/TextTracksHelper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/tikilive/ui/helper/TextTracksHelper;->isTextTrackEnabled(Landroid/util/Pair;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 272
    new-instance v7, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;

    invoke-direct {v7, p0, v5, v6}, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$2;Landroid/util/Pair;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v5, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v5}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 286
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, p1

    const/high16 p1, 0x44070000    # 540.0f

    cmpg-float p1, v1, p1

    if-gez p1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$700(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getControllerShowTimeoutMs()I

    move-result v1

    invoke-static {p1, v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$602(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)I

    .line 291
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$700(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerShowTimeoutMs(I)V

    .line 292
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$800(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method
