###### Class com.google.android.gms.common.api.BooleanResult (com.google.android.gms.common.api.BooleanResult)
.class public Lcom/google/android/gms/common/api/BooleanResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;

.field private final p:Z


# virtual methods
.method public V2()Lcom/google/android/gms/common/api/Status;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/BooleanResult;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 1
    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/common/api/BooleanResult;

    if-nez v2, :cond_d

    return v0

    .line 2
    :cond_d
    check-cast p1, Lcom/google/android/gms/common/api/BooleanResult;

    iget-object v2, p0, Lcom/google/android/gms/common/api/BooleanResult;->o:Lcom/google/android/gms/common/api/Status;

    iget-object v3, p1, Lcom/google/android/gms/common/api/BooleanResult;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/BooleanResult;->p:Z

    iget-boolean p1, p1, Lcom/google/android/gms/common/api/BooleanResult;->p:Z

    if-ne v2, p1, :cond_20

    return v1

    :cond_20
    return v0
.end method

.method public final hashCode()I
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/BooleanResult;->o:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/BooleanResult;->p:Z

    add-int/2addr v0, v1

    return v0
.end method
