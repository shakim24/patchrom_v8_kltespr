.class final Lcom/android/server/BatteryService$LocalService;
.super Landroid/os/BatteryManagerInternal;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/BatteryManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get10(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v0

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBatteryLevelLow()Z
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get10(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get1(Lcom/android/server/BatteryService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getInvalidCharger()I
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get10(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPlugType()I
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get10(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get13(Lcom/android/server/BatteryService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isPowered(I)Z
    .locals 2
    .param p1, "plugTypeSet"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get10(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->-wrap0(Lcom/android/server/BatteryService;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
