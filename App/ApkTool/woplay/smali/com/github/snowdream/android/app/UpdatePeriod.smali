.class public Lcom/github/snowdream/android/app/UpdatePeriod;
.super Ljava/lang/Object;
.source "UpdatePeriod.java"


# static fields
.field public static final EACH_MAX:I = 0x16d

.field public static final EACH_MIN:I = 0x0

.field public static final EACH_ONE_DAY:I = 0x1

.field public static final EACH_ONE_MONTH:I = 0x1e

.field public static final EACH_ONE_WEEK:I = 0x7

.field public static final EACH_THREE_DAYS:I = 0x3

.field public static final EACH_THREE_WEEKS:I = 0x15

.field public static final EACH_TIME:I = 0x0

.field public static final EACH_TWO_DAYS:I = 0x2

.field public static final EACH_TWO_WEEKS:I = 0xe


# instance fields
.field private period:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/github/snowdream/android/app/UpdatePeriod;->period:I

    const/16 v0, 0x16d

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 63
    iput p1, p0, Lcom/github/snowdream/android/app/UpdatePeriod;->period:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/github/snowdream/android/app/UpdatePeriod;->period:I

    goto :goto_0

    .line 67
    :cond_1
    iput v0, p0, Lcom/github/snowdream/android/app/UpdatePeriod;->period:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getPeriod()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/github/snowdream/android/app/UpdatePeriod;->period:I

    return v0
.end method

.method public getPeriodMillis()J
    .locals 2

    .line 95
    iget v0, p0, Lcom/github/snowdream/android/app/UpdatePeriod;->period:I

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public setPeriod(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/github/snowdream/android/app/UpdatePeriod;->period:I

    return-void
.end method
