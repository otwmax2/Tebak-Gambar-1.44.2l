###### Class com.twitter.sdk.android.core.z (com.twitter.sdk.android.core.z)
.class public Lcom/twitter/sdk/android/core/z;
.super Ljava/lang/Object;
.source "TwitterRateLimit.java"


# instance fields
.field private a:I

.field private b:I

.field private c:J


# direct methods
.method constructor <init>(Lja/s;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_60

    const/4 v0, 0x0

    .line 2
    :goto_6
    invoke-virtual {p1}, Lja/s;->h()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 3
    invoke-virtual {p1, v0}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-rate-limit-limit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4
    invoke-virtual {p1, v0}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/twitter/sdk/android/core/z;->a:I

    goto :goto_5c

    .line 5
    :cond_27
    invoke-virtual {p1, v0}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-rate-limit-remaining"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 6
    invoke-virtual {p1, v0}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/twitter/sdk/android/core/z;->b:I

    goto :goto_5c

    .line 7
    :cond_42
    invoke-virtual {p1, v0}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-rate-limit-reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 8
    invoke-virtual {p1, v0}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/sdk/android/core/z;->c:J

    :cond_5c
    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5f
    return-void

    .line 9
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "headers must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_69

    :goto_68
    throw p1

    :goto_69
    goto :goto_68
.end method
