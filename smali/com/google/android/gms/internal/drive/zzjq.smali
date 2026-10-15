###### Class com.google.android.gms.internal.drive.zzjq (com.google.android.gms.internal.drive.zzjq)
.class final Lcom/google/android/gms/internal/drive/zzjq;
.super Lcom/google/android/gms/internal/drive/zzjo;


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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzjo;-><init>(Lcom/google/android/gms/internal/drive/zzjp;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjq;->j:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjq;->d:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/drive/zzjq;->f:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/drive/zzjq;->h:I

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/drive/zzjq;->i:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/drive/zzjq;->e:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/drive/zzjp;)V
    .registers 6

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/drive/zzjq;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final b()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjq;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/drive/zzkq;
        }
    .end annotation

    if-ltz p1, :cond_2a

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjo;->b()I

    move-result v0

    add-int/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjq;->j:I

    if-gt p1, v0, :cond_25

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjq;->j:I

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjq;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->f:I

    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjq;->i:I

    sub-int v2, v1, v2

    if-le v2, p1, :cond_21

    sub-int/2addr v2, p1

    .line 6
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjq;->g:I

    sub-int/2addr v1, v2

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->f:I

    goto :goto_24

    :cond_21
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjq;->g:I

    :goto_24
    return v0

    .line 9
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->a()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object p1

    throw p1

    .line 10
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->b()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object p1

    throw p1
.end method
