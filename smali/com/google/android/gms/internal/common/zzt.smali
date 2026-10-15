###### Class com.google.android.gms.internal.common.zzt (com.google.android.gms.internal.common.zzt)
.class final Lcom/google/android/gms/internal/common/zzt;
.super Lcom/google/android/gms/internal/common/zzw;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# instance fields
.field final synthetic v:Lcom/google/android/gms/internal/common/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzu;Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzt;->v:Lcom/google/android/gms/internal/common/zzu;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/common/zzw;-><init>(Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final d(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final e(I)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzt;->v:Lcom/google/android/gms/internal/common/zzu;

    iget-object v0, v0, Lcom/google/android/gms/internal/common/zzu;->a:Lcom/google/android/gms/internal/common/zzo;

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzw;->q:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, "index"

    .line 2
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/common/zzs;->b(IILjava/lang/String;)I

    :goto_f
    if-ge p1, v2, :cond_1e

    .line 3
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/common/zzo;->a(C)Z

    move-result v3

    if-nez v3, :cond_1f

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_1e
    const/4 p1, -0x1

    :cond_1f
    return p1
.end method
