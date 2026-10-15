###### Class com.google.android.gms.internal.common.zzj (com.google.android.gms.internal.common.zzj)
.class abstract Lcom/google/android/gms/internal/common/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# instance fields
.field private o:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private p:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/common/zzj;->p:I

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected final b()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/common/zzj;->p:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/zzj;->p:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    if-eqz v2, :cond_21

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_20

    iput v1, p0, Lcom/google/android/gms/internal/common/zzj;->p:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzj;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/common/zzj;->o:Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/common/zzj;->p:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_20

    iput v0, p0, Lcom/google/android/gms/internal/common/zzj;->p:I

    return v0

    :cond_20
    return v4

    :cond_21
    return v0

    :cond_22
    const/4 v0, 0x0

    .line 2
    throw v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzj;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/common/zzj;->p:I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzj;->o:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/common/zzj;->o:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 4
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
