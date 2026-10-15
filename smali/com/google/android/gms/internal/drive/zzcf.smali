###### Class com.google.android.gms.internal.drive.zzcf (com.google.android.gms.internal.drive.zzcf)
.class final Lcom/google/android/gms/internal/drive/zzcf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;

.field private final p:Lcom/google/android/gms/drive/FileUploadPreferences;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzcf;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzcf;->p:Lcom/google/android/gms/drive/FileUploadPreferences;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/drive/zzcc;)V
    .registers 5

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzcf;-><init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;)V

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcf;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
