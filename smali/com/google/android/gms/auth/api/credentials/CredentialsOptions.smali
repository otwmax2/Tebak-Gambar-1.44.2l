###### Class com.google.android.gms.auth.api.credentials.CredentialsOptions (com.google.android.gms.auth.api.credentials.CredentialsOptions)
.class public final Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;
.super Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final s:Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;->b()Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;->s:Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;Lcom/google/android/gms/auth/api/credentials/zbd;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;-><init>(Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;)V

    return-void
.end method

###### Class com.google.android.gms.auth.api.credentials.CredentialsOptions.Builder (com.google.android.gms.auth.api.credentials.CredentialsOptions$Builder)
.class public final Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;
.super Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;-><init>(Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;Lcom/google/android/gms/auth/api/credentials/zbd;)V

    return-object v0
.end method
