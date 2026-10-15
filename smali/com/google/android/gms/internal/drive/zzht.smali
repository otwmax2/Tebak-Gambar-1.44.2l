###### Class com.google.android.gms.internal.drive.zzht (com.google.android.gms.internal.drive.zzht)
.class final Lcom/google/android/gms/internal/drive/zzht;
.super Lcom/google/android/gms/drive/metadata/internal/zzb;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V
    .registers 5

    const p4, 0x6acfc0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/metadata/internal/zzb;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic f(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/zzb;->g(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final g(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;
    .registers 5

    const-string v0, "trashed"

    .line 1
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->X3(Ljava/lang/String;II)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
