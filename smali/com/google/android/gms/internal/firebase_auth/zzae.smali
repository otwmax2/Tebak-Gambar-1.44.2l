###### Class com.google.android.gms.internal.firebase_auth.zzae (com.google.android.gms.internal.firebase_auth.zzae)
.class abstract Lcom/google/android/gms/internal/firebase_auth/zzae;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private o:I

.field private p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzag;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzae;->o:I

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzag;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzae;->o:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzae;->o:I

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzag;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_2d

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/firebase_auth/zzad;->a:[I

    sub-int/2addr v0, v3

    aget v0, v4, v0

    if-eq v0, v3, :cond_2c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2b

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzae;->o:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzae;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzae;->p:Ljava/lang/Object;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzae;->o:I

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzag;->c:I

    if-eq v0, v1, :cond_2a

    .line 6
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzag;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzae;->o:I

    return v3

    :cond_2a
    return v2

    :cond_2b
    return v3

    :cond_2c
    return v2

    .line 7
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzae;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzag;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzae;->o:I

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzae;->p:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzae;->p:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
