.class public Lcom/github/snowdream/android/util/LogFilter$ContentFilter;
.super Lcom/github/snowdream/android/util/LogFilter;
.source "LogFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/util/LogFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentFilter"
.end annotation


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/github/snowdream/android/util/LogFilter;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/github/snowdream/android/util/LogFilter$ContentFilter;->msg:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/github/snowdream/android/util/LogFilter;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/github/snowdream/android/util/LogFilter$ContentFilter;->msg:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/github/snowdream/android/util/LogFilter$ContentFilter;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/github/snowdream/android/util/LogFilter$ContentFilter;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    return v1

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/github/snowdream/android/util/LogFilter$ContentFilter;->msg:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/github/snowdream/android/util/LogFilter$ContentFilter;->msg:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method
