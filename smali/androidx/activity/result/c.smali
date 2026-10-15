###### Class androidx.activity.result.c (androidx.activity.result.c)
.class public abstract Landroidx/activity/result/c;
.super Ljava/lang/Object;
.source "ActivityResultLauncher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
.method public abstract a()Le/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a<",
            "TI;*>;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/activity/result/c;->c(Ljava/lang/Object;Landroidx/core/app/c;)V

    return-void
.end method

.method public abstract c(Ljava/lang/Object;Landroidx/core/app/c;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Landroidx/core/app/c;",
            ")V"
        }
    .end annotation
.end method

.method public abstract d()V
.end method
