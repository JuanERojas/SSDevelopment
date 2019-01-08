.class public Lcom/github/snowdream/android/util/LogFilter$LevelFilter;
.super Lcom/github/snowdream/android/util/LogFilter;
.source "LogFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/util/LogFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LevelFilter"
.end annotation


# instance fields
.field private level:Lcom/github/snowdream/android/util/Log$LEVEL;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/github/snowdream/android/util/LogFilter;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/github/snowdream/android/util/LogFilter$LevelFilter;->level:Lcom/github/snowdream/android/util/Log$LEVEL;

    .line 64
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/github/snowdream/android/util/Log$LEVEL;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/github/snowdream/android/util/LogFilter;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/github/snowdream/android/util/LogFilter$LevelFilter;->level:Lcom/github/snowdream/android/util/Log$LEVEL;

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "level is null or not valid."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/github/snowdream/android/util/LogFilter$LevelFilter;->level:Lcom/github/snowdream/android/util/Log$LEVEL;

    return-void
.end method


# virtual methods
.method public filter(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 83
    invoke-virtual {p1}, Lcom/github/snowdream/android/util/Log$LEVEL;->getLevel()I

    move-result p1

    iget-object p2, p0, Lcom/github/snowdream/android/util/LogFilter$LevelFilter;->level:Lcom/github/snowdream/android/util/Log$LEVEL;

    invoke-virtual {p2}, Lcom/github/snowdream/android/util/Log$LEVEL;->getLevel()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
