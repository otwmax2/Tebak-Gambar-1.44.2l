###### Class com.google.android.gms.internal.drive.zzif (com.google.android.gms.internal.drive.zzif)
.class public final Lcom/google/android/gms/internal/drive/zzif;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/drive/zzig;

.field public static final b:Lcom/google/android/gms/internal/drive/zzih;

.field public static final c:Lcom/google/android/gms/internal/drive/zzij;

.field public static final d:Lcom/google/android/gms/internal/drive/zzii;

.field public static final e:Lcom/google/android/gms/internal/drive/zzil;

.field public static final f:Lcom/google/android/gms/internal/drive/zzik;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzig;

    const-string v1, "created"

    const v2, 0x3e8fa0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->a:Lcom/google/android/gms/internal/drive/zzig;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzih;

    const-string v1, "lastOpenedTime"

    const v3, 0x419ce0

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/drive/zzih;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->b:Lcom/google/android/gms/internal/drive/zzih;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/drive/zzij;

    const-string v1, "modified"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzij;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->c:Lcom/google/android/gms/internal/drive/zzij;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/drive/zzii;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzii;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->d:Lcom/google/android/gms/internal/drive/zzii;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/drive/zzil;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->e:Lcom/google/android/gms/internal/drive/zzil;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/drive/zzik;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzik;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->f:Lcom/google/android/gms/internal/drive/zzik;

    return-void
.end method
