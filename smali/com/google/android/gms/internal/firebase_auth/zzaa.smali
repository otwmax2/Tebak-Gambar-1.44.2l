###### Class com.google.android.gms.internal.firebase_auth.zzaa (com.google.android.gms.internal.firebase_auth.zzaa)
.class public final enum Lcom/google/android/gms/internal/firebase_auth/zzaa;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzih;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_auth/zzaa;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzih;"
    }
.end annotation


# static fields
.field private static final enum p:Lcom/google/android/gms/internal/firebase_auth/zzaa;

.field private static final enum q:Lcom/google/android/gms/internal/firebase_auth/zzaa;

.field public static final enum r:Lcom/google/android/gms/internal/firebase_auth/zzaa;

.field private static final enum s:Lcom/google/android/gms/internal/firebase_auth/zzaa;

.field private static final enum t:Lcom/google/android/gms/internal/firebase_auth/zzaa;

.field private static final u:Lcom/google/android/gms/internal/firebase_auth/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzik<",
            "Lcom/google/android/gms/internal/firebase_auth/zzaa;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic v:[Lcom/google/android/gms/internal/firebase_auth/zzaa;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const-string v1, "VERIFY_OP_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzaa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->p:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const-string v3, "SIGN_UP_OR_IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase_auth/zzaa;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_auth/zzaa;->q:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const-string v5, "REAUTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase_auth/zzaa;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_auth/zzaa;->r:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 4
    new-instance v5, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const-string v7, "UPDATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/firebase_auth/zzaa;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase_auth/zzaa;->s:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 5
    new-instance v7, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const-string v9, "LINK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/firebase_auth/zzaa;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/firebase_auth/zzaa;->t:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/firebase_auth/zzaa;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/google/android/gms/internal/firebase_auth/zzaa;->v:[Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->u:Lcom/google/android/gms/internal/firebase_auth/zzik;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->o:I

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/firebase_auth/zzij;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzab;->a:Lcom/google/android/gms/internal/firebase_auth/zzij;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_auth/zzaa;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->v:[Lcom/google/android/gms/internal/firebase_auth/zzaa;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_auth/zzaa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_auth/zzaa;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->o:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->o:I

    return v0
.end method

###### Class com.google.android.gms.internal.firebase_auth.zzac (com.google.android.gms.internal.firebase_auth.zzac)
.class final Lcom/google/android/gms/internal/firebase_auth/zzac;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzik;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzik<",
        "Lcom/google/android/gms/internal/firebase_auth/zzaa;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
