.class public abstract Lcom/github/snowdream/android/util/LogFilter;
.super Ljava/lang/Object;
.source "LogFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/snowdream/android/util/LogFilter$ContentFilter;,
        Lcom/github/snowdream/android/util/LogFilter$LevelFilter;,
        Lcom/github/snowdream/android/util/LogFilter$TagFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract filter(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;)Z
.end method
