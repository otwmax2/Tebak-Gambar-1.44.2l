###### Class com.google.android.gms.internal.drive.zzaq (com.google.android.gms.internal.drive.zzaq)
.class public final Lcom/google/android/gms/internal/drive/zzaq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;

.field private final p:Lcom/google/android/gms/drive/MetadataBuffer;

.field private final q:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzaq;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzaq;->p:Lcom/google/android/gms/drive/MetadataBuffer;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/drive/zzaq;->q:Z

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaq;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaq;->p:Lcom/google/android/gms/drive/MetadataBuffer;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataBuffer;->c()V

    :cond_7
    return-void
.end method
