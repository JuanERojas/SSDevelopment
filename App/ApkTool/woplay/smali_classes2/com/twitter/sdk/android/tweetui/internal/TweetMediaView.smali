.class public Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;
.super Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;
.source "TweetMediaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;
    }
.end annotation


# instance fields
.field overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->drawableStateChanged()V

    .line 52
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;->setDrawableState([I)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->invalidate()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 57
    invoke-super {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->onMeasure(II)V

    .line 58
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;->setDrawableBounds(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->onSizeChanged(IIII)V

    .line 64
    iget-object p3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    invoke-virtual {p3, p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;->setDrawableBounds(II)V

    return-void
.end method

.method public setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;->cleanupDrawable(Landroid/widget/ImageView;)V

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 87
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    .line 88
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->overlay:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Overlay;->setDrawableState([I)V

    .line 89
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->requestLayout()V

    return-void
.end method
