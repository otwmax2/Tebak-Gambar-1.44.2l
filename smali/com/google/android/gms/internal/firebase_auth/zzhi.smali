###### Class com.google.android.gms.internal.firebase_auth.zzhi (com.google.android.gms.internal.firebase_auth.zzhi)
.class final Lcom/google/android/gms/internal/firebase_auth/zzhi;
.super Lcom/google/android/gms/internal/firebase_auth/zzhh;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method private final d()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->d:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->g:I

    add-int/2addr v1, v0

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->h:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->e:I

    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->d:I

    return-void

    :cond_15
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->e:I

    return-void
.end method


# virtual methods
.method public final b(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzin;
        }
    .end annotation

    if-ltz p1, :cond_17

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->f:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->h:I

    if-gt p1, v0, :cond_12

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->h:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhi;->d()V

    return v0

    .line 5
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->a()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1

    .line 6
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->b()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1
.end method

.method public final c()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhi;->f:I

    add-int/2addr v0, v1

    return v0
.end method
