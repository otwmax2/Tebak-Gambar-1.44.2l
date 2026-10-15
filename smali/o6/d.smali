###### Class o6.d (o6.d)
.class public abstract Lo6/d;
.super Ljava/lang/Object;
.source "InstallationResponse.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/d$a;,
        Lo6/d$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo6/d$a;
    .registers 1

    .line 1
    new-instance v0, Lo6/a$b;

    invoke-direct {v0}, Lo6/a$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lo6/f;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lo6/d$b;
.end method

.method public abstract f()Ljava/lang/String;
.end method

###### Class o6.d.a (o6.d$a)
.class public abstract Lo6/d$a;
.super Ljava/lang/Object;
.source "InstallationResponse.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/d;
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
.method public abstract a()Lo6/d;
.end method

.method public abstract b(Lo6/f;)Lo6/d$a;
.end method

.method public abstract c(Ljava/lang/String;)Lo6/d$a;
.end method

.method public abstract d(Ljava/lang/String;)Lo6/d$a;
.end method

.method public abstract e(Lo6/d$b;)Lo6/d$a;
.end method

.method public abstract f(Ljava/lang/String;)Lo6/d$a;
.end method

###### Class o6.d.b (o6.d$b)
.class public final enum Lo6/d$b;
.super Ljava/lang/Enum;
.source "InstallationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo6/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lo6/d$b;

.field public static final enum p:Lo6/d$b;

.field private static final synthetic q:[Lo6/d$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lo6/d$b;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo6/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo6/d$b;->o:Lo6/d$b;

    .line 2
    new-instance v1, Lo6/d$b;

    const-string v3, "BAD_CONFIG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lo6/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo6/d$b;->p:Lo6/d$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lo6/d$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lo6/d$b;->q:[Lo6/d$b;

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

.method public static valueOf(Ljava/lang/String;)Lo6/d$b;
    .registers 2

    .line 1
    const-class v0, Lo6/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo6/d$b;

    return-object p0
.end method

.method public static values()[Lo6/d$b;
    .registers 1

    .line 1
    sget-object v0, Lo6/d$b;->q:[Lo6/d$b;

    invoke-virtual {v0}, [Lo6/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo6/d$b;

    return-object v0
.end method
