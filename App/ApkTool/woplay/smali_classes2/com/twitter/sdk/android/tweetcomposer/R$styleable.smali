.class public final Lcom/twitter/sdk/android/tweetcomposer/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final tw__AspectRatioImageView:[I

.field public static final tw__AspectRatioImageView_tw__image_aspect_ratio:I = 0x0

.field public static final tw__AspectRatioImageView_tw__image_dimension_to_adjust:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 157
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/sdk/android/tweetcomposer/R$styleable;->tw__AspectRatioImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04029c
        0x7f04029d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
