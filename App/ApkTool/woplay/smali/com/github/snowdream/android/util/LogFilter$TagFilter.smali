.class public Lcom/github/snowdream/android/util/LogFilter$TagFilter;
.super Lcom/github/snowdream/android/util/LogFilter;
.source "LogFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/util/LogFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagFilter"
.end annotation


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/github/snowdream/android/util/LogFilter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/github/snowdream/android/util/LogFilter$TagFilter;->tag:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/github/snowdream/android/util/LogFilter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/github/snowdream/android/util/LogFilter$TagFilter;->tag:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/github/snowdream/android/util/LogFilter$TagFilter;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/github/snowdream/android/util/LogFilter$TagFilter;->tag:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/github/snowdream/android/util/LogFilter$TagFilter;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p3

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
