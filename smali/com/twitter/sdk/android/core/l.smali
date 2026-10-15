###### Class com.twitter.sdk.android.core.l (com.twitter.sdk.android.core.l)
.class public Lcom/twitter/sdk/android/core/l;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lwa/l;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lwa/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lwa/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/core/l;->b:Lwa/l;

    return-void
.end method
