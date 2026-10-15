###### Class com.google.android.gms.internal.drive.zzao (com.google.android.gms.internal.drive.zzao)
.class final Lcom/google/android/gms/internal/drive/zzao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$DriveIdResult;


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;

.field private final p:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzao;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzao;->p:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzao;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
