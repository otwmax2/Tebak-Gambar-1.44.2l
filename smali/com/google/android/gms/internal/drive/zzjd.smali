###### Class com.google.android.gms.internal.drive.zzjd (com.google.android.gms.internal.drive.zzjd)
.class final Lcom/google/android/gms/internal/drive/zzjd;
.super Lcom/google/android/gms/internal/drive/zzjf;


# instance fields
.field private o:I

.field private final p:I

.field private final synthetic q:Lcom/google/android/gms/internal/drive/zzjc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzjc;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjd;->q:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzjf;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjd;->o:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjd;->p:I

    return-void
.end method


# virtual methods
.method public final c()B
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjd;->o:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjd;->p:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjd;->o:I

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzjd;->q:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/drive/zzjc;->s(I)B

    move-result v0

    return v0

    .line 5
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjd;->o:I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjd;->p:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
