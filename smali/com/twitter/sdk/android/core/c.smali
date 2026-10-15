###### Class com.twitter.sdk.android.core.c (com.twitter.sdk.android.core.c)
.class public abstract Lcom/twitter/sdk/android/core/c;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwa/d<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lwa/b;Lwa/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "TT;>;",
            "Lwa/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2
    new-instance p1, Lcom/twitter/sdk/android/core/l;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/twitter/sdk/android/core/l;-><init>(Ljava/lang/Object;Lwa/l;)V

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/c;->d(Lcom/twitter/sdk/android/core/l;)V

    goto :goto_1b

    .line 3
    :cond_13
    new-instance p1, Lcom/twitter/sdk/android/core/q;

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/core/q;-><init>(Lwa/l;)V

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/c;->c(Lcom/twitter/sdk/android/core/y;)V

    :goto_1b
    return-void
.end method

.method public final b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/twitter/sdk/android/core/y;

    const-string v0, "Request Failure"

    invoke-direct {p1, v0, p2}, Lcom/twitter/sdk/android/core/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/c;->c(Lcom/twitter/sdk/android/core/y;)V

    return-void
.end method

.method public abstract c(Lcom/twitter/sdk/android/core/y;)V
.end method

.method public abstract d(Lcom/twitter/sdk/android/core/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "TT;>;)V"
        }
    .end annotation
.end method
