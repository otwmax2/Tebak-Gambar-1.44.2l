###### Class com.google.android.gms.common.data.DataBufferRef (com.google.android.gms.common.data.DataBufferRef)
.class public abstract Lcom/google/android/gms/common/data/DataBufferRef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field protected final o:Lcom/google/android/gms/common/data/DataHolder;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field protected p:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private q:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/data/DataBufferRef;->B(I)V

    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_e
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected final B(I)V
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_c

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->n(Z)V

    iput p1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataHolder;->c4(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/data/DataBufferRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 2
    check-cast p1, Lcom/google/android/gms/common/data/DataBufferRef;

    .line 3
    iget v0, p1, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p1, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object p1, p1, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    if-ne p1, v0, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    return v1
.end method

.method protected h(Ljava/lang/String;)Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->V3(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected t(Ljava/lang/String;)F
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->f4(Ljava/lang/String;II)F

    move-result p1

    return p1
.end method

.method protected v(Ljava/lang/String;)I
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->X3(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method protected w(Ljava/lang/String;)J
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->Y3(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method protected x(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/String;)Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataHolder;->d4(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected z(Ljava/lang/String;)Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferRef;->o:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->p:I

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->q:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->e4(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
