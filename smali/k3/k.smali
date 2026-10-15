###### Class k3.k (k3.k)
.class public abstract Lk3/k;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/k$a;,
        Lk3/k$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lk3/k$a;
    .registers 1

    .line 1
    new-instance v0, Lk3/e$b;

    invoke-direct {v0}, Lk3/e$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lk3/a;
.end method

.method public abstract c()Lk3/k$b;
.end method

###### Class k3.k.a (k3.k$a)
.class public abstract Lk3/k$a;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lk3/k;
.end method

.method public abstract b(Lk3/a;)Lk3/k$a;
.end method

.method public abstract c(Lk3/k$b;)Lk3/k$a;
.end method

###### Class k3.k.b (k3.k$b)
.class public final enum Lk3/k$b;
.super Ljava/lang/Enum;
.source "ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk3/k$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lk3/k$b;

.field public static final enum q:Lk3/k$b;

.field private static final synthetic r:[Lk3/k$b;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lk3/k$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lk3/k$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk3/k$b;->p:Lk3/k$b;

    .line 2
    new-instance v1, Lk3/k$b;

    const-string v3, "ANDROID_FIREBASE"

    const/4 v4, 0x1

    const/16 v5, 0x17

    invoke-direct {v1, v3, v4, v5}, Lk3/k$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lk3/k$b;->q:Lk3/k$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lk3/k$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lk3/k$b;->r:[Lk3/k$b;

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
    iput p3, p0, Lk3/k$b;->o:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk3/k$b;
    .registers 2

    .line 1
    const-class v0, Lk3/k$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk3/k$b;

    return-object p0
.end method

.method public static values()[Lk3/k$b;
    .registers 1

    .line 1
    sget-object v0, Lk3/k$b;->r:[Lk3/k$b;

    invoke-virtual {v0}, [Lk3/k$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk3/k$b;

    return-object v0
.end method
