###### Class m3.g (m3.g)
.class public abstract Lm3/g;
.super Ljava/lang/Object;
.source "BackendResponse.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm3/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lm3/g;
    .registers 4

    .line 1
    new-instance v0, Lm3/b;

    sget-object v1, Lm3/g$a;->q:Lm3/g$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lm3/b;-><init>(Lm3/g$a;J)V

    return-object v0
.end method

.method public static d()Lm3/g;
    .registers 4

    .line 1
    new-instance v0, Lm3/b;

    sget-object v1, Lm3/g$a;->r:Lm3/g$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lm3/b;-><init>(Lm3/g$a;J)V

    return-object v0
.end method

.method public static e(J)Lm3/g;
    .registers 4

    .line 1
    new-instance v0, Lm3/b;

    sget-object v1, Lm3/g$a;->o:Lm3/g$a;

    invoke-direct {v0, v1, p0, p1}, Lm3/b;-><init>(Lm3/g$a;J)V

    return-object v0
.end method

.method public static f()Lm3/g;
    .registers 4

    .line 1
    new-instance v0, Lm3/b;

    sget-object v1, Lm3/g$a;->p:Lm3/g$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lm3/b;-><init>(Lm3/g$a;J)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Lm3/g$a;
.end method

###### Class m3.g.a (m3.g$a)
.class public final enum Lm3/g$a;
.super Ljava/lang/Enum;
.source "BackendResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm3/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lm3/g$a;

.field public static final enum p:Lm3/g$a;

.field public static final enum q:Lm3/g$a;

.field public static final enum r:Lm3/g$a;

.field private static final synthetic s:[Lm3/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lm3/g$a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm3/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm3/g$a;->o:Lm3/g$a;

    .line 2
    new-instance v1, Lm3/g$a;

    const-string v3, "TRANSIENT_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lm3/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm3/g$a;->p:Lm3/g$a;

    .line 3
    new-instance v3, Lm3/g$a;

    const-string v5, "FATAL_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lm3/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm3/g$a;->q:Lm3/g$a;

    .line 4
    new-instance v5, Lm3/g$a;

    const-string v7, "INVALID_PAYLOAD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lm3/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lm3/g$a;->r:Lm3/g$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lm3/g$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lm3/g$a;->s:[Lm3/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm3/g$a;
    .registers 2

    .line 1
    const-class v0, Lm3/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm3/g$a;

    return-object p0
.end method

.method public static values()[Lm3/g$a;
    .registers 1

    .line 1
    sget-object v0, Lm3/g$a;->s:[Lm3/g$a;

    invoke-virtual {v0}, [Lm3/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm3/g$a;

    return-object v0
.end method
