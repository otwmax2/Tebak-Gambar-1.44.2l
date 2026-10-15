###### Class com.google.android.gms.drive.Drive (com.google.android.gms.drive.Drive)
.class public final Lcom/google/android/gms/drive/Drive;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/Drive$zza;,
        Lcom/google/android/gms/drive/Drive$zzb;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/drive/zzaw;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/drive/zzaw;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/drive/zzaw;",
            "Lcom/google/android/gms/drive/Drive$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/drive/zzaw;",
            "Lcom/google/android/gms/drive/Drive$zza;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/common/api/Scope;

.field private static final g:Lcom/google/android/gms/common/api/Scope;
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field private static final h:Lcom/google/android/gms/common/api/Scope;

.field public static final i:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final j:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/drive/Drive$zzb;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/drive/Drive$zza;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lcom/google/android/gms/drive/DriveApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final m:Lcom/google/android/gms/drive/zzj;
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final n:Lcom/google/android/gms/drive/zzl;

.field public static final o:Lcom/google/android/gms/drive/DrivePreferencesApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/drive/a;

    invoke-direct {v1}, Lcom/google/android/gms/drive/a;-><init>()V

    sput-object v1, Lcom/google/android/gms/drive/Drive;->b:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v2, Lcom/google/android/gms/drive/b;

    invoke-direct {v2}, Lcom/google/android/gms/drive/b;-><init>()V

    sput-object v2, Lcom/google/android/gms/drive/Drive;->c:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 4
    new-instance v3, Lcom/google/android/gms/drive/c;

    invoke-direct {v3}, Lcom/google/android/gms/drive/c;-><init>()V

    sput-object v3, Lcom/google/android/gms/drive/Drive;->d:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 5
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "https://www.googleapis.com/auth/drive.file"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/drive/Drive;->e:Lcom/google/android/gms/common/api/Scope;

    .line 6
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "https://www.googleapis.com/auth/drive.appdata"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/drive/Drive;->f:Lcom/google/android/gms/common/api/Scope;

    .line 7
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "https://www.googleapis.com/auth/drive"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/drive/Drive;->g:Lcom/google/android/gms/common/api/Scope;

    .line 8
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "https://www.googleapis.com/auth/drive.apps"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/drive/Drive;->h:Lcom/google/android/gms/common/api/Scope;

    .line 9
    new-instance v4, Lcom/google/android/gms/common/api/Api;

    const-string v5, "Drive.API"

    invoke-direct {v4, v5, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v4, Lcom/google/android/gms/drive/Drive;->i:Lcom/google/android/gms/common/api/Api;

    .line 10
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    const-string v4, "Drive.INTERNAL_API"

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/drive/Drive;->j:Lcom/google/android/gms/common/api/Api;

    .line 11
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    const-string v2, "Drive.API_CONNECTIONLESS"

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/drive/Drive;->k:Lcom/google/android/gms/common/api/Api;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/drive/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->l:Lcom/google/android/gms/drive/DriveApi;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzbr;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->m:Lcom/google/android/gms/drive/zzj;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/drive/zzeb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzeb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->n:Lcom/google/android/gms/drive/zzl;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzcb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->o:Lcom/google/android/gms/drive/DrivePreferencesApi;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.drive.Drive.zza (com.google.android.gms.drive.Drive$zza)
.class public final Lcom/google/android/gms/drive/Drive$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final o:Landroid/os/Bundle;

.field private final p:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# virtual methods
.method public final R1()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/Drive$zza;->p:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public final a()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/Drive$zza;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5c

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/drive/Drive$zza;

    if-eq v2, v3, :cond_10

    goto :goto_5c

    .line 2
    :cond_10
    check-cast p1, Lcom/google/android/gms/drive/Drive$zza;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/drive/Drive$zza;->p:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Drive$zza;->R1()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 4
    :cond_1f
    iget-object v2, p0, Lcom/google/android/gms/drive/Drive$zza;->o:Landroid/os/Bundle;

    const-string v3, "method_trace_filename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v4, p1, Lcom/google/android/gms/drive/Drive$zza;->o:Landroid/os/Bundle;

    .line 6
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_31

    if-eqz v3, :cond_3b

    :cond_31
    if-eqz v2, :cond_5c

    if-eqz v3, :cond_5c

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    :cond_3b
    iget-object v2, p0, Lcom/google/android/gms/drive/Drive$zza;->o:Landroid/os/Bundle;

    const-string v3, "bypass_initial_sync"

    .line 8
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 9
    iget-object v4, p1, Lcom/google/android/gms/drive/Drive$zza;->o:Landroid/os/Bundle;

    .line 10
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_5c

    iget-object v2, p0, Lcom/google/android/gms/drive/Drive$zza;->o:Landroid/os/Bundle;

    const-string v3, "proxy_type"

    .line 11
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/drive/Drive$zza;->o:Landroid/os/Bundle;

    .line 13
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne v2, p1, :cond_5c

    return v0

    :cond_5c
    :goto_5c
    return v1
.end method

.method public final hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/Drive$zza;->o:Landroid/os/Bundle;

    const-string v1, "method_trace_filename"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/drive/Drive$zza;->o:Landroid/os/Bundle;

    const-string v2, "proxy_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/drive/Drive$zza;->o:Landroid/os/Bundle;

    const-string v3, "bypass_initial_sync"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/drive/Drive$zza;->p:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Objects;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class com.google.android.gms.drive.Drive.zzb (com.google.android.gms.drive.Drive$zzb)
.class public final Lcom/google/android/gms/drive/Drive$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation
