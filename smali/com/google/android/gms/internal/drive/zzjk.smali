###### Class com.google.android.gms.internal.drive.zzjk (com.google.android.gms.internal.drive.zzjk)
.class final Lcom/google/android/gms/internal/drive/zzjk;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/drive/zzjr;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjk;->b:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->I([B)Lcom/google/android/gms/internal/drive/zzjr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjk;->a:Lcom/google/android/gms/internal/drive/zzjr;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/drive/zzjd;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzjk;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/drive/zzjc;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjk;->a:Lcom/google/android/gms/internal/drive/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzjr;->Y()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjm;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzjk;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzjm;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/drive/zzjr;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjk;->a:Lcom/google/android/gms/internal/drive/zzjr;

    return-object v0
.end method
