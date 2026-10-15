###### Class o6.f (o6.f)
.class public abstract Lo6/f;
.super Ljava/lang/Object;
.source "TokenResult.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/f$a;,
        Lo6/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo6/f$a;
    .registers 3

    .line 1
    new-instance v0, Lo6/b$b;

    invoke-direct {v0}, Lo6/b$b;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lo6/b$b;->d(J)Lo6/f$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Lo6/f$b;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()J
.end method

###### Class o6.f.a (o6.f$a)
.class public abstract Lo6/f$a;
.super Ljava/lang/Object;
.source "TokenResult.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/f;
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
.method public abstract a()Lo6/f;
.end method

.method public abstract b(Lo6/f$b;)Lo6/f$a;
.end method

.method public abstract c(Ljava/lang/String;)Lo6/f$a;
.end method

.method public abstract d(J)Lo6/f$a;
.end method

###### Class o6.f.b (o6.f$b)
.class public final enum Lo6/f$b;
.super Ljava/lang/Enum;
.source "TokenResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo6/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lo6/f$b;

.field public static final enum p:Lo6/f$b;

.field public static final enum q:Lo6/f$b;

.field private static final synthetic r:[Lo6/f$b;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lo6/f$b;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo6/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo6/f$b;->o:Lo6/f$b;

    .line 2
    new-instance v1, Lo6/f$b;

    const-string v3, "BAD_CONFIG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lo6/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo6/f$b;->p:Lo6/f$b;

    .line 3
    new-instance v3, Lo6/f$b;

    const-string v5, "AUTH_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lo6/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lo6/f$b;->q:Lo6/f$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lo6/f$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lo6/f$b;->r:[Lo6/f$b;

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

.method public static valueOf(Ljava/lang/String;)Lo6/f$b;
    .registers 2

    .line 1
    const-class v0, Lo6/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo6/f$b;

    return-object p0
.end method

.method public static values()[Lo6/f$b;
    .registers 1

    .line 1
    sget-object v0, Lo6/f$b;->r:[Lo6/f$b;

    invoke-virtual {v0}, [Lo6/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo6/f$b;

    return-object v0
.end method
