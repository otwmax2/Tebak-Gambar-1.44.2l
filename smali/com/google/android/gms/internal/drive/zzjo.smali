###### Class com.google.android.gms.internal.drive.zzjo (com.google.android.gms.internal.drive.zzjo)
.class public abstract Lcom/google/android/gms/internal/drive/zzjo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjo;->a:I

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjo;->b:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzjo;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzjp;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzjo;-><init>()V

    return-void
.end method

.method static a([BIIZ)Lcom/google/android/gms/internal/drive/zzjo;
    .registers 10

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/drive/zzjq;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zzjq;-><init>([BIIZLcom/google/android/gms/internal/drive/zzjp;)V

    .line 2
    :try_start_b
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzjo;->c(I)I
    :try_end_e
    .catch Lcom/google/android/gms/internal/drive/zzkq; {:try_start_b .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/drive/zzkq;
        }
    .end annotation
.end method
