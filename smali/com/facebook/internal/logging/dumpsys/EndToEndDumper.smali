###### Class com.facebook.internal.logging.dumpsys.EndToEndDumper (com.facebook.internal.logging.dumpsys.EndToEndDumper)
.class public interface abstract Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;
.super Ljava/lang/Object;
.source "EndToEndDumper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;->$$INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

    sput-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

    return-void
.end method


# virtual methods
.method public abstract maybeDump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
.end method

###### Class com.facebook.internal.logging.dumpsys.EndToEndDumper.Companion (com.facebook.internal.logging.dumpsys.EndToEndDumper$Companion)
.class public final Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;
.super Ljava/lang/Object;
.source "EndToEndDumper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

.field private static instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

    invoke-direct {v0}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;-><init>()V

    sput-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;->$$INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;->instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;

    return-object v0
.end method

.method public final setInstance(Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;)V
    .registers 2

    .line 1
    sput-object p1, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;->instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;

    return-void
.end method
