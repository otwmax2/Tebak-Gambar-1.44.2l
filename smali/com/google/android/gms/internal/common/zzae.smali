###### Class com.google.android.gms.internal.common.zzae (com.google.android.gms.internal.common.zzae)
.class final Lcom/google/android/gms/internal/common/zzae;
.super Lcom/google/android/gms/internal/common/zzz;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# instance fields
.field private final q:Lcom/google/android/gms/internal/common/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzag;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/common/zzz;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzae;->q:Lcom/google/android/gms/internal/common/zzag;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzae;->q:Lcom/google/android/gms/internal/common/zzag;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
