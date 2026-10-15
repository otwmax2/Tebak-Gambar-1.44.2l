###### Class com.google.android.gms.internal.firebase_auth.zzhj (com.google.android.gms.internal.firebase_auth.zzhj)
.class final Lcom/google/android/gms/internal/firebase_auth/zzhj;
.super Lcom/google/android/gms/internal/firebase_auth/zzhh;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final d:[B

.field private final e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method private constructor <init>([BIIZ)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzhg;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->j:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->d:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->f:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->h:I

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->i:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->e:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/firebase_auth/zzhg;)V
    .registers 6

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzhj;-><init>([BIIZ)V

    return-void
.end method

.method private final d()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->f:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->i:I

    sub-int v1, v0, v1

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->j:I

    if-le v1, v2, :cond_16

    sub-int/2addr v1, v2

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->g:I

    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->f:I

    return-void

    :cond_16
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->g:I

    return-void
.end method


# virtual methods
.method public final b(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzin;
        }
    .end annotation

    if-ltz p1, :cond_16

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->c()I

    move-result v0

    add-int/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->j:I

    if-gt p1, v0, :cond_11

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->j:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->d()V

    return v0

    .line 5
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->a()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1

    .line 6
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->b()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1
.end method

.method public final c()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->i:I

    sub-int/2addr v0, v1

    return v0
.end method
