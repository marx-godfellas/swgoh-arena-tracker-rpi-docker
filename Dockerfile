FROM iprobedroid/swgoh-arena-tracker:beta-23 as builder

FROM mcr.microsoft.com/dotnet/runtime:5.0.4-alpine3.13-arm64v8
WORKDIR /app
COPY --from=builder /app .
ENTRYPOINT ["dotnet", "SimpleTracker.dll"]
